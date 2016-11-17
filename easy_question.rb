require_relative 'question.rb'
class EasyQuestion



    def initialize
      @range = rand(1...10)
      @addition = '+'

      super
    end
    def generate_question
      @x = rand(@range)
      @y = rand(@range)

      @operation = @addition


    end



end