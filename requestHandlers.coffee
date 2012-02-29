exec = require("child_process").exec

start = (response) ->
	console.log "Request handler 'start' was called."
	content = "empty"

	exec("find /", 
		{ timeout: 10000, maxBuffer: 20000*1024 },
		(error, stdout, stderr) ->
			response.writeHead(200, {"Content-Type": "text/plain"})
			response.write(stdout)
			response.end()
	)

upload = (response) ->
	console.log "Request handler 'upload' was called."
	response.writeHead(200, {"Content-Type": "text/plain"})
	response.write("Hello, upload!")
	response.end()

exports.start = start
exports.upload = upload