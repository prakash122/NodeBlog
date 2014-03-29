markdown = require('markdown').markdown
fs = require('fs')

exports.list = (req, res)->
	files = [

		name: 'Javascript Callbacks'
		link: 'js-callbacks'
	,
		name: 'Introducing NodeJS'
		link: 'introducing-nodejs'
	,
		name: 'NPM'
		link: 'NPM'
	,
		name: 'Introducing Express'
		link: 'introducing-express'
	,
		name: 'Express Sessions'
		link: 'express-sessions'
	,
		name: 'Role Based responses'
		link: 'role-based-response'
	,
		name: 'Jade Templates'
		link: 'jade-templates'
	,
		name: 'Init MongoDb'
		link: 'init-mongo'
	,
		name: 'Using MongoDb'
		link: 'using-mongodb'


	]
	file.link = 'blogs/' + file.link for file in files

	res.render 'blogList', data: files, contentLayout : true


exports.getBlog = (req, res)->
	blogName = req.params.name
	#Check for blog existence
	#if not found show the 404 page and also a link to all the blogs

	blogPath = 'blogs/' + blogName + '.md'
	fs.readFile(blogPath, 'utf8', (err, data)->
		if err
			res.send err.message
		else
			res.render 'blogView', data: markdown.toHTML(data), contentLayout : true
	)


