require_relative 'question.rb'
class EasyQuestion<Question
  def initialize
    @range = rand(1...10)
    @addition = '+'
    super
  end

  def make_questions
    @x = rand(@range)
    @y = rand(@range)
    @operation = @addition
  end

end