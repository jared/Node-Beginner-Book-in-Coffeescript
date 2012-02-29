http = require 'http'

start = -> 
	onRequest = (request, response) ->
		console.log "Request received!"
		response.writeHead 200, {"Content-Type": "text/plain"}
		response.write "Hello World!"
		response.end()

	console.log "Starting server"
	http.createServer(onRequest).listen 8888
	console.log "Server listening on port 8888"
	
exports.start = start