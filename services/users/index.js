require('babel-register')({
   presets: [ 'es2015' ]
});
require("./users.js").startServer();
