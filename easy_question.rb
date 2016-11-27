require_relative 'question.rb'
class EasyQuestion < Question
  def initialize
    @range = (1..9)
    @first_operation = '+'
    super
  end

  def make_question
    @x = rand(@range)
    @y = rand(@range)
    @operation = @first_operation
  end
end