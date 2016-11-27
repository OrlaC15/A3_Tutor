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
     def test_is_game_over
      4.times do
        @player.this_answer = :Correct
        @player.last_answer = :Correct
        @player.check_level?
      end
      assert(@player.is_game_over?, 'Game over method not working')
    end
  end
