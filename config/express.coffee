path = require("path")

module.exports = (app, express)->
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
	app.use app.router
	app.use require("less-middleware")(path.join(appDir, "public"))
	app.use express.static(path.join(appDir, "public"))

	# development only
	app.use express.errorHandler()  if "development" is app.get("env")
