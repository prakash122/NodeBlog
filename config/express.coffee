path = require("path")
express = require("express")

module.exports = (app)->
	appDir = path.resolve __dirname, '..'

	# all environments
	app.set "port", process.env.PORT or 3000
	app.set "views", path.join(appDir, "views")
	app.set "view engine", "jade"
	app.use express.favicon()
	app.use express.logger("dev")
	app.use express.json()
	app.use express.urlencoded()
	app.use express.methodOverride()
	app.use require("less-middleware")(path.join(appDir, "public"))
	app.use express.static(path.join(appDir, "public"))
	app.use app.router

	# development only
	app.use express.errorHandler()  if "development" is app.get("env")
