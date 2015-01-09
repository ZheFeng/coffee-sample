express = require("express")
PORT = process.env.PORT or 3000


router = express.Router()
router.get '/', (req, res) -> res.send "Hello world"


app = express()
app.use "/", router



exports.start = (done) -> app.listen PORT, ->
  console.log "Express server listening on port #{PORT}"
  done?()

