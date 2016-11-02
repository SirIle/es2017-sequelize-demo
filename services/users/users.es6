import models from '../../models'
import restify from 'restify'
import bunyan from 'bunyan'
import os from 'os'

const log = bunyan.createLogger( { name: 'users', level: 'DEBUG' } )

export function startServer() {
  // Create a restify server
  const server = restify.createServer()
  server.use( restify.CORS() )
  // Define the endpoint
  server.get( '/users/:userid', (req, res, next) => {
    res.header('Host', os.hostname() ) // For scaling demonstration
    models.user.findOne( { where: { userid: req.params.userid },
      include: models.address, logging: log.debug.bind(log) } ).then( (user) => {
        if ( user ) res.send(user)
        else res.send(new restify.NotFoundError('user ' +
          req.params.userid + ' not found'))
        next()
      })
  })
  server.listen( 8080, () =>
    log.info( '%s listening at %s', server.name, server.url )
  )
}
