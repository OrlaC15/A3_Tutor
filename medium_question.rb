require_relative 'question.rb'
class MediumQuestion< Question
  def initialize
    @range = rand(1...10)
    @addition = '+'
    @subtraction ='-'
    super
  end
end