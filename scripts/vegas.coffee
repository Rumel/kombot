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
    oldDay = new Date("October 4, 2015 06:00:00")
    newDay = new Date("October 10, 2015 06:00:00")
    d = new Date()

    if d > oldDay && newDay > d
      msg.send "I lost all of my money in Vegas. :sob:"
