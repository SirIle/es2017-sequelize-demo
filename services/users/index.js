require('babel-register')({
   presets: [ 'es2015' ]
});
require("./users.es6").startServer();
