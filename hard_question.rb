require_relative 'question.rb'
class HardQuestion< Question
  def initialize
    @range = rand(10...99)
    @first_operator= '*'
    @second_operator ='/'
    super
  end
end