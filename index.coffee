server = require "./server"
router = require "./router"

server.start(router.route)