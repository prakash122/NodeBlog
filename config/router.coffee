blog = require('../routes/blog')


module.exports = (app)->

	# routes
	app.get '/', blog.list

	app.get '/*', (req, res)->
		res.render '404'
