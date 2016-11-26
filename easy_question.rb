require_relative 'question.rb'
class EasyQuestion<Question
  def initialize
    @range = rand(1...10)
    @first_operator = '+'
    super
  end
  def make_question
    @x = rand(@range)
    @y = rand(@range)

    @operation = @first_operator


  end


end