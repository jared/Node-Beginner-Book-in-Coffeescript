http = require 'http'
url  = require 'url'
port = 8888

start = (route, handle) -> 
	onRequest = (request, response) ->
		postData = ""
		pathname = url.parse(request.url).pathname		

		console.log "Request for " + pathname + " received."

		request.setEncoding "utf8"
		request.addListener "data", (postDataChunk) ->
			postData += postDataChunk
			console.log "Received POST data chunk '" + postDataChunk + "'."

		request.addListener "end", () ->
			route(handle, pathname, response, postData)

	console.log "Starting server..."
	http.createServer(onRequest).listen port
	console.log "Server listening on port " + port

exports.start = start