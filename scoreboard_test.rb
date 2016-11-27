require_relative 'score_board.rb'
require 'test/unit'
class ScoreboardTest<Test::Unit::TestCase
  def setup
    @statistics = ScoreBoard.new
    @statistics.add 'What is 12 + 4?', :Incorrect
    @statistics.add 'What is 8 + 2?', :Correct

  end
  def test_add
    assert(@statistics.statistics['What is 8 + 2?']==:Correct.to_s, 'Add method is not working')
    assert(@statistics.statistics['What is 12 + 4?']==:Incorrect.to_s, 'Add method is not working')
  end

  def test_sort
    @statistics.add 'What is 1 + 2?', :Correct
    not_sorted = [["What is 1+ 1?", "InCorrect"],["What is 1 + 2?", "Correct"], ["What is 5 + 4?", "Incorrect"]]
    assert(!(@statistics.sort.eql?(not_sorted)), 'Error Not Sorting ')
  end

end