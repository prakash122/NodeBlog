###
Module dependencies.
###
express = require("express")
app = express()

# express configurations
require('./config/express') app

# register routes
require('./config/router') app

app.listen app.get("port"), ->
	console.log "Express server listening on port " + app.get("port")


