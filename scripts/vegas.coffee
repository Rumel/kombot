# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

  robot.hear /vegas/i, (msg) ->
    vegasDay = new Date("October 4, 2015 06:00:00")
    d = new Date()
    seconds = vegasDay - d
    days = Math.floor(seconds / 1000 / 3600 / 24) + 1
    if days > 1
      msg.send(days + " days until Vegas")
    else if days == 1
      msg.send("1 day until Vegas")
    else
      msg.send "Vegas is now"
