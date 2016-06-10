# Hubot Movie enhanced

## Description


                            /                            \
    //\                    |      I know all the movie    |
    ////\        _____     |   that have ever exist Sir ! |
    //////\     /_____\    \                             /
    =======    |[^_/\_]|   /----------------------------  
    |   |     _|___@@__|__                                
    +===+/     ///     \_\                               
    | |_\     /// HUBOT/\\                             
    |___/\   //      /  \\                            
    \       /   +---+                            
    \___  _/    |   |                            
    | //   |    +===+                            
    \//         |xx|  


This is the [OMDB](http://www.omdbapi.com) adapter for hubot that allows you to
send an query to search for a movie of tvshow information.

## Installation
  Nothing to install
### Note if running on Heroku
  None
## Usage

  Replace hubot with the name of yout bot and the movie-name with your media

  ex: hubot **is it a** movie iron man 3
```bash
  jarvis> jarvis is it a movie iron man 3
  jarvis>

    movie in Action, Adventure, Sci-Fi registry, Realeased in 03 May 2013 writed by Drew Pearce (screenplay), Shane Black (screenplay), Stan Lee (based on the Marvel comic book by), Don Heck (based on the Marvel comic book by), Larry Lieber (based on the Marvel comic book by), Jack Kirby (based on the Marvel comic book by), Warren Ellis (based on the "Extremis" mini-series written by), Adi Granov (based on the "Extremis" mini-series illustrated by), Main actors : Robert Downey Jr., Gwyneth Paltrow, Don Cheadle, Guy Pearce

    Title : Iron Man 3            
    Year: 2013             
    Rated : PG-13            
    Released : 03 May 2013            
    Runtime: 130 min            
    Genre : Action, Adventure, Sci-Fi             
    Director : Shane Black             
    Writer : Drew Pearce (screenplay), Shane Black (screenplay), Stan Lee (based on the Marvel comic book by), Don Heck (based on the Marvel comic book by), Larry Lieber (based on the Marvel comic book by), Jack Kirby (based on the Marvel comic book by), Warren Ellis (based on the "Extremis" mini-series written by), Adi Granov (based on the "Extremis" mini-series illustrated by)            
    Actors: Robert Downey Jr., Gwyneth Paltrow, Don Cheadle, Guy Pearce            
    Plot When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.            
    Lang : English            
    Country : USA, China            
    Awards : Nominated for 1 Oscar. Another 17 wins & 52 nominations.             
    Poster : http://ia.media-imdb.com/images/M/MV5BMTkzMjEzMjY1M15BMl5BanBnXkFtZTcwNTMxOTYyOQ@@._V1_SX300.jpg             
    Metascore : 62            
    ImdbRating : 7.3            
    ImdbVotes : 543,536            
    ImdbID : tt1300854            
    Type : movie            
    Response : True  
              
  source :www.ombdapi.com
```
English :
```bash
  hubot **search** <movie or tvshow  name>
  hubot **search** movie < movie or tvshow name >
  hubot **is it a movie** < movie  or tvshow name >
  hubot **is movie** < movie  or tvshow name >
  hubot **which movie** < movie or tvshow name >
  hubot **which tvshow** < movie or tvshow name >
```
   French :
```bash
  hubot **quel film** < movie name >
  hubot **quel série** < movie name >
  hubot **quel serie** < movie name >
```
   Arabic :
```bash
  hubot فيلم < movie name >
```
### Heroku
 None
### Non-Heroku environment variables
 None
## Contribute

Just send pull request if needed or fill an issue !

## Copyright

Copyright &copy; Abdelilah HEDDAR. See LICENSE for details.

[hubot]: https://github.com/github/hubot
[hubot-movie]: https://github.com/chickenzord/hubot-movie/blob/master/scripts/movie.coffee
[script-catalog]: http://hubot-script-catalog.herokuapp.com
[src-scripts]: https://github.com/github/hubot-scripts/tree/master/src/scripts
[example-script]: https://github.com/github/hubot-scripts/blob/master/src/scripts/tweet.coffee
[hubot-script-tests]: https://github.com/github/hubot-scripts/blob/master/test/tests.coffee
[example-script-doc]: https://github.com/github/hubot-scripts/blob/master/src/scripts/speak.coffee#L1-5
