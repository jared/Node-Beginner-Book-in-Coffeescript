start = ->
	console.log "Request handler 'start' was called."
	sleep = (milliseconds) ->
		startTime = new Date().getTime()
		while (new Date().getTime() < (startTime + milliseconds))
			console.log "sleeping"

	sleep 10000
	return "Hello, start"

upload = ->
	console.log "Request handler 'upload' was called."
	return "Hello, upload"

exports.start = start
exports.upload = upload