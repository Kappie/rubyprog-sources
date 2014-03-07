Question = require "./question"

describe "Question", ->
  question = {}
  beforeEach ->
    question_params =
      description: "Typ eens x = 1."
      answer: /x\s*=\s*1/
      possible_mistakes: {}
      error_messages:
        default: "Dat is niet goed. Typte je x = 1?"

    question = new Question(question_params)

  it "knows its description", ->
    expect(question.description).toEqual "Typ eens x = 1."

  describe "Evaluating a command", ->
    it "knows if the answer is correct", ->
      question.evaluate("x = 5")
      expect(question.isRightAnswer).toEqual true
