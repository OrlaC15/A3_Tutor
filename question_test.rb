require 'test/unit'
require_relative 'question.rb'
require_relative 'hard_question.rb'
require_relative 'medium_question.rb'
require_relative 'easy_question.rb'

class QuestionTest <Test::Unit::TestCase
  def setup
    @question = Question.new
    @easy_question = EasyQuestion.new
    @medium_question = MediumQuestion.new
    @hard_question = HardQuestion.new
  end

  def test_the_range
    assert(((@easy_question.x).between?(1, 9)&&(@easy_question.y).between?(1, 9)), "Easy question range is incorrect")
    assert(((@hard_question.x).between?(1, 9)&&(@hard_question.y).between?(1, 9)), "Hard question range is incorrect")
    assert(((@medium_question.x).between?(10, 99)&&(@medium_question.y).between?(10, 99)), "Medium question range is incorrect")
  end

end