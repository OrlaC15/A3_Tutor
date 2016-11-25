require_relative 'question.rb'
class EasyQuestion<Question
  def initialize
    @range = rand(1...10)
    @first_operator = '+'
    super
  end



end