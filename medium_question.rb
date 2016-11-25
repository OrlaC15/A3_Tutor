require_relative 'question.rb'
class MediumQuestion< Question
  def initialize
    @range = rand(1...10)
    @first_operator = '+'
    @second_operator ='-'
    super
  end
end