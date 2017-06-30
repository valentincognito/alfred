# Description:
#   Scripts containing all the conversations
#

module.exports = (robot) ->

  hay = ['Bien et vous ?', 'Je vous retourne la question.', 'Magnifique journée n\'est-ce pas ?']

  robot.hear /kkk/i, (res) ->
    res.send "ahahah"

  robot.hear /ca va/i, (res) ->
    res.send res.random hay
