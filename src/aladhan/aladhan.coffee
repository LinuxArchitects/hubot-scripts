# Description:
# This is the Adhan adapter for hubot that allows you to
# send an query about prier time
# Get adhan/iftar/imsak time for mulsim in any country by simply asking hubot
#
# Dependencies:
#   None
#
# Configuration:
#  No API KEY required
#
# Commands:
#  feel free to write adan as you whish
# ex:
#   English:
#     hubot search (adhan Or athan Or adan Or ladan)  in Paris France
#     hubot (adhan Or athan Or adan Or ladan) Paris France
#     hubot search (adhan Or athan Or adan Or ladan) Dubai AE
#     hubot search in Dubai AE
#   Arabic :
#     hubot ﺍﺫﺎﻧ Paris France
#   French :
#     hubot horaire(s) de (prieres or prière(s) Or priére(s) ) Rabat Morocco
# Author:
#   Abdelilah Heddar

# export Module
module.exports = (robot) ->
  robot.respond /\s?(search|horaire(s)?)?\s?([aA][dt]han|adan|اذان|pri[eéè]re(s)?)\s?(in|f|a|à)?\s?([A-Za-z]*)\s*([A-Za-z]*)$/i, (msg) ->
    find_adhan_city = msg.match[6]
    find_adhan_country = msg.match[7]
    msg.http("http://api.aladhan.com/timingsByCity?city=#{find_adhan_city}&country=#{find_adhan_country}&method=2")
      .get() (err, res, body) ->
        json = JSON.parse(body)
        switch json.code
          when 200
            msg.send "\n Athan time in #{find_adhan_city}
            \n Fajr    : #{json.data.timings.Fajr}
            \n Sunrise : #{json.data.timings.Sunrise}
            \n Dhuhr   : #{json.data.timings.Dhuhr}
            \n Asr     : #{json.data.timings.Asr}
            \n Sunset  : #{json.data.timings.Sunset}
            \n Maghrib : #{json.data.timings.Maghrib}
            \n Isha    : #{json.data.timings.Isha}
            \n\nsource :api.aladhan.com"
          else
            # No response if not found | you can change this behavour to sweets your need
            msg.send "#{json.data}"
