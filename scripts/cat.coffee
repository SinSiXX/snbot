# Description:
#   cat me is the most important thing in your life (ΦωΦ)
#   Interacts with The Cat API. (http://thecatapi.com/)
#
# Dependencies:
#   "cheerio": "~0.13.1"
#
# Configuration:
#   None
#
# Commands:
#   hubot cat me <category> - Receive a cat
#   hubot show me cat's categories - show cat's active categories.

$ = require 'cheerio'
baseUrl = "http://thecatapi.com/api"

module.exports = (robot) ->
  robot.respond /cat me( (.*))?/i, (msg) ->
    url = if msg.match[2]? then baseUrl + "/images/get?format=xml&category=" + msg.match[2] else baseUrl + "/images/get?format=xml"
    msg.http(url)
      .get() (err, res, body) ->
        image = $(body).find("url")
        msg.send image.text()

  robot.respond /show me cat's categories/i, (msg) ->
    msg.http(baseUrl + "/categories/list")
      .get() (err, res, body) ->
        categories = $(body).find("category")
        msg.send $(category).find("name").text() for category in categories
