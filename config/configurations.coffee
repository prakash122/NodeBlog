instance = {}
module.exports = ()->

	if not instance
		instance = {
			db : getDbUrl(process.env.NODE_ENV)
		}

	instance


getDbUrl = (env)->
	if env is 'development'
		'mongodb://localhost/noplugin'
	else
		process.env.NODE_ENV
