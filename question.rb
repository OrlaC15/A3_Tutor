class Question
  attr_reader :x,:y,:operation
def initialize
  make_questions
end
  def print_questions
    "What is #{@x} #{@operation} #{@y} ?"
  end
  def make_questions
    @x = rand(@range)
    @y = rand(@range)
    number= rand(2)
    case number
    when 0
    @operation = @first_operator
    when 1
    @operation = @second_operator
    end
  end

end


