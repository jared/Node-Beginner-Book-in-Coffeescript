http = require 'http'
url  = require 'url'
port = 8888

start = (route) -> 
	onRequest = (request, response) ->
		pathname = url.parse(request.url).pathname		
		console.log "Request for " + pathname + " received."

		route(pathname)

		response.writeHead 200, {"Content-Type": "text/plain"}
		response.write "Hello World!"
		response.end()

	console.log "Starting server..."
	http.createServer(onRequest).listen port
	console.log "Server listening on port " + port

exports.start = start