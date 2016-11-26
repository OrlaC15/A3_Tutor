require_relative 'question.rb'
class MediumQuestion < Question
  def initialize
    @range = (10..99)
    @first_operation = '+'
    @second_operation = '-'
    super
  end

end