# Description:
#   Scripts containing all the conversations
#

module.exports = (robot) ->

  greetings = ['Hola !', 'Bonjour', 'Hello', 'Salut', '안녕 !']
  hay = ['Bien et vous ?', 'Je vous retourne la question.', 'Magnifique journée n\'est-ce pas ?']

  robot.hear /bonjour/i, (res) ->
    res.send res.random greetings

  robot.hear /hello/i, (res) ->
    res.send res.random greetings

  robot.hear /salut/i, (res) ->
    res.send res.random greetings

  robot.hear /cc/i, (res) ->
    res.send res.random greetings

  robot.hear /coucou/i, (res) ->
    res.send res.random greetings

  robot.hear /ca va/i, (res) ->
    res.send res.random hay

  robot.hear /kkk/i, (res) ->
    res.send "ahahah"

  robot.hear /joke/i, (res) ->
    robot.http("https://icanhazdadjoke.com/")
    .get() (err, res, body) ->
      res.send {body}
