module Calculator
  def answer
       result = self.last.x + self.last.y
  end
end

class QuestionList
  include Calculator
  attr_reader :questions

  def initialize
    @questions = []
  end

  def make_questions
    @questions << EasyQuestion.new

  end

  def each
    1.upto @questions.size do |i|
    end
  end

  def print_questions
    self.each do |question|
      question.to_s
    end
  end

  def last
    @questions.last
  end
end
