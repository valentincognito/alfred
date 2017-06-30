# Description:
#   Scripts containing all the conversations
#

module.exports = (robot) ->

  greetings = ['Hola !', 'Bonjour', 'Hello', 'Salut', '안녕 !']
  hay = ['Bien et vous ?', 'Je vous retourne la question.', 'Magnifique journée n\'est-ce pas ?']
  choice = ['Absolument !', 'Pas toujours', 'Oui', 'Ca dépend', 'Non jamais de la vie', 'non']


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

  robot.hear /putain/i, (res) ->
    res.send "Quelle grossierté !"

  robot.hear /joke/i, (msg) ->
    robot.http("https://icanhazdadjoke.com/")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.send "Desolé j\'ai eu un petit problème :( #{err}"
          return
        data = JSON.parse body
        msg.send "#{data.joke}"

  robot.hear /blague/i, (msg) ->
    robot.http("https://icanhazdadjoke.com/")
      .header('Accept', 'application/json')
      .get() (err, res, body) ->
        if err
          msg.send "Desolé j\'ai eu un petit problème :( #{err}"
          return
        data = JSON.parse body
        msg.send "#{data.joke}"

  robot.respond /(.*) penses (.*)/i, (res) ->
    res.reply res.random choice

  robot.listen(
    (message) ->
      message.user.name is "valentincognito" and Math.random() > 0.2
    (response) ->
      response.reply "Tu parles beaucoup pour rien dire..."
  )
