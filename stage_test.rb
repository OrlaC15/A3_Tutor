require_relative 'stage.rb'
require 'test/unit'
class LevelTest <Test::Unit::TestCase
  def setup
    @stage = Stage.new 2,6
  end
  def test_level_up
    5.times do
      @stage.level_up
    end
    assert(@stage.stage>=6, 'Up a level method not working')

  end
  def test_level_down
  2.times do
      @stage.level_up
  end
  3.times do
    @stage.level_down
  end
    assert(@stage.stage<=2, 'Down a level method not working')
  end
end