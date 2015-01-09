request = require "request"
expect = require("chai").expect
app = require "./app"

before (done) -> app.start -> done()

describe 'Http', ->

  it 'should get status 200 and Hello world', (done) ->
    request.get "http://localhost:3000", (err, response, body) ->
      throw err if err
      expect(response.statusCode).to.eq 200
      expect(body).to.eq "Hello world"
      done()

