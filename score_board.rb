class ScoreBoard
  attr_reader :statistics
  def initialize
    @statistics = Hash.new
  end
  def add (question,answer)
    @statistics[question.to_s] = answer.to_s

  end
  def sort
    @statistics.sort_by{|question,answer| answer}
  end
  def to_s
    sort.inject("Your results where as follows:"){|str,result| str+="\n"+result.join}
  end
end
