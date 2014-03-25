markdown = require('markdown').markdown
fs = require('fs')

exports.list = (req, res)->
	files = [
		name: 'Introducing NodeJS'
		link: 'introducing-nodejs'
	,
		name: 'Introducing Express'
		link: 'introducing-express'
	,
		name: 'NPM'
		link: 'NPM'
	,
		name: 'Jade Templates'
		link: 'jade-templates'
	,
		name: 'Using CoffeeScript'
		link: 'using-coffee'
	,
		name: 'Javascript Callbacks'
		link: 'js-callbacks'
	,
	]
	file.link = 'blogs/' + file.link for file in files

	res.render 'blogList', data: filesf, contentLayout : true


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


