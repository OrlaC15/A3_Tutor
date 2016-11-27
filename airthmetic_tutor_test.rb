require 'test/unit'
require_relative 'arithmetic_tutor'
class ArithmeticTutorTest<Test::Unit::TestCase
  def setup
    @player= ArithmeticTutor.new 'John',4,1234
  end
  def test_check_answer
    @player.ask_question
    @player.this_answer=11
    @player.is_correct?
    assert(@player.this_answer==:Correct, 'Test check answer method error')
  end
 end