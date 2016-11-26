require_relative 'question.rb'
class HardQuestion < Question
  def initialize
    @range =rand(1..10)
    @first_operation = '*'
    @second_operation = '/'
    super
  end
end