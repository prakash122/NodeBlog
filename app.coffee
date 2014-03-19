###
Module dependencies.
###
express = require("express")
routes = require("./routes")
user = require("./routes/user")
app = express()

# express configurations
require('./config/express') app, express

# routes
app.get "/", routes.index
app.get "/users", user.list

app.listen app.get("port"), ->
	console.log "Express server listening on port " + app.get("port")


