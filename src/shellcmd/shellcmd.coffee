# Description:
#  Execute a shell command if you can't be bothered to learn coffee script.
#  This particular example just does a DNS lookup.
#
# Dependencies:
#  None
#
# Configuration
#  Change the script if you want to exeute a different command
#
# Commands:
#  hubot search IP/ip X.X.X.X
#
# Author:
#  Abdelilah HEDDAR
#

# Module lookup host
module.exports = (robot) ->
 robot.respond /\s?(search)?\s?([Ii][Pp])?\s?((?:[0-9]{1,3}\.){3}[0-9]{1,3})$/i, (msg) ->
    hostname = msg.match[3]
    @exec = require('child_process').exec
    command = "host #{hostname}"

    msg.send "Looking up #{hostname}..."
    msg.send "This is the command #{command}."

    @exec command, (error, stdout, stderr) ->
      msg.send error
      msg.send stdout
      msg.send stderr

    @exec = require('child_process').exec
    nmap = "nmap #{hostname}"

    msg.send "scan for open ports #{hostname}..."
    msg.send "This is the command #{nmap}."

    @exec nmap, (error, stdout, stderr) ->
      msg.send error
      msg.send stdout
      msg.send stderr
