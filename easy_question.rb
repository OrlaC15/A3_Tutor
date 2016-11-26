require_relative 'question.rb'
class EasyQuestion<Question
  def initialize
    @range = rand(1...10)
    @first_operator = '+'
    super
  end
  def roll
    Random.rand(1)
  end


end