require_relative 'question.rb'
class HardQuestion< Question
  def initialize
    @range = rand(10...99)
    @division = '*'
    @multiplication ='/'
    super
  end
end