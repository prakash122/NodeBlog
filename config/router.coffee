blog = require('../app/routes/blog')


module.exports = (app)->

	# routes
	app.get '/', blog.list
	app.get '/blogs/:name', blog.getBlog

	app.get '/*', (req, res)->
		res.render '404'
