class Question
  constructor: (params) ->
    @description = params.description
    @_answer = params.answer

  evaluate: (command) ->
    @isRightAnswer = @_answer.test(command)    


module.exports = Question