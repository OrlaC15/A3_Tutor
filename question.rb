class Question
  attr_reader :x,:y,:operation
def initialize
  make_questions
end
  def print_questions
    "What is #{@x} #{@operation} #{@y} ?"
  end
end


