# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md
# Commands:
#   hubot deploy - Returns the amount of days until deployment
#   hubot deployment - Returns the amount of days until deployment

module.exports = (robot) ->
 
  robot.respond /.*deploy(ment)?.*/i, (msg) ->
    deploymentDay = new Date("August 8, 2015 06:00:00")
    d = new Date()
    seconds = deploymentDay - d
    days = Math.floor(seconds / 1000 / 3600 / 24)
    if days > 1
      msg.send("Deployment is on August 8th of 2015, " + days + " days from now.")
    else
      msg.send "Deployment is today"
