import chai from 'chai'
import restify from 'restify-clients'

const should = chai.should()
const client = restify.createJsonClient( { url: 'http://localhost:8080' } )

describe('if the user exists', () => {
  it('returns http statuscode 200 and a JSON object for the user', (done) => {
    client.get('/users/user1', (err, req, res, obj) => {
      res.statusCode.should.equal(200)
      obj.userid.should.equal('user1')
      obj.age.should.be.at.least(30)
      done()
    })
  })
})

describe('if the user does not exist', () => {
  it('returns http statuscode 404', (done) => {
    // Something seems to be missing here
  })
})
