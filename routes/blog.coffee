markdown = require('markdown').markdown
fs = require('fs')

exports.list = (req, res)->

	fs.readFile('blogs/NPM.md', 'utf8', (err, data)->
		if err
			res.send err.message
		else
			res.render 'blogList', data: markdown.toHTML(data)
	)

exports.getBlog = (req, res)->
	blogName = req.params.name
	#Check for blog existence
	#if not found show the 404 page and also a link to all the blogs

	blogPath = 'blogs/' + blogName + '.md'
	fs.readFile(blogPath, 'utf8', (err, data)->
		if err
			res.send err.message
		else
			res.render 'blogView', data: markdown.toHTML(data)
	)
