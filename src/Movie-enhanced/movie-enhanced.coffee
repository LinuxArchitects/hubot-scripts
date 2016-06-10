# Description:
#
#
# Dependencies:
#   None
#
# Configuration:
#  None
#
# Commands:
#   English :
# ex  hubot is it a movie iron-man-3
#     hubot search < movie or tvshow  name >
#     hubot search movie < movie or tvshow name >
#     hubot is it a movie < movie  or tvshow name >
#     hubot is movie < movie  or tvshow name >
#     hubot which movie < movie or tvshow name >
#     hubot which tvshow < movie or tvshow name >
#   French :
#     hubot quel film < movie name >
#     hubot quel série < movie name >
#     hubot quel serie < movie name >
#   Arabic :
#     hubot فيلم < movie name >
# Author:
#   Linux Architect

# export Module
module.exports = (robot) ->
  robot.respond /\s?(search|quel|which|is|is\sit|hada)?\s?a?\s?(search|movie|فيلم|file?m|cin[ée]ma|s[eé]rie|show|(tv)show)\s?([A-Za-z0-9\s]*)$/i, (msg) ->
    find_Movie = msg.match[4]
    msg.http("http://www.omdbapi.com/?r=json&t=#{find_Movie}")
      .get() (err, res, body) ->
        json = JSON.parse(body)
        switch json.Response
          when "True"
            msg.send "\n  #{json.Type} in #{json.Genre} registry, Realeased in #{json.Released} writed by #{json.Writer}, Main actors : #{json.Actors}"
            msg.send "\n  Title : #{json.Title}
            \n  Year: #{json.Year}
            \n  Rated : #{json.Rated}
            \n  Released : #{json.Released}
            \n  Runtime: #{json.Runtime}
            \n  Genre : #{json.Genre}
            \n  Director : #{json.Director}
            \n  Writer : #{json.Writer}
            \n  Actors: #{json.Actors}
            \n  Plot #{json.Plot}
            \n  Lang : #{json.Language}
            \n  Country : #{json.Country}
            \n  Awards : #{json.Awards}
            \n  Poster : #{json.Poster}
            \n  Metascore : #{json.Metascore}
            \n  ImdbRating : #{json.imdbRating}
            \n  ImdbVotes : #{json.imdbVotes}
            \n  ImdbID : #{json.imdbID}
            \n  Type : #{json.Type}
            \n  Response : #{json.Response}
            \n\nsource :www.ombdapi.com"
          else
            # No response if not found you can | you can change this behavour to sweets your need
	    msg.send ""
