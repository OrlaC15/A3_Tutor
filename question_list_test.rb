require 'test/unit'
require_relative 'question_list.rb'
class QuestionListTest <Test::Unit::TestCase
  def setup
    @questions = QuestionList.new
    srand(1234)
  end

  def test_last
    @questions.make_question 1
    assert(@questions.last==@questions.questions.last, 'Error Last method not working')
  end

  def test_calculator_module
    @questions.make_question 1
    result = 4+7
    assert(result == @questions.answer, 'Error Calculator module no working')
  end

end