class Question
  attr_reader :x,:y,:operation
  def initialize
    make_question
  end
  def print_questions
    "What is #{@x} #{@operation} #{@y} ?"
  end
  def make_question
    @x = rand(@range)
    @y = check_zero
    operation = rand(2)
    case operation
      when 0
        @operation = @first_operation
      when 1
        @operation = @second_operation
    end
  end
  def check_zero
    y=rand(@range)
    if y==0
      y=1
    else
      y=y
    end
  end

end

