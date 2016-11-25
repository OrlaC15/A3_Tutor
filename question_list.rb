module Calculator
  def answer
    case self.last.operation
 when '*'
   results = self.last.x * self.last.y
      when '/'
        results =  self.last.x / self.last.y
      when '+'
        results = self.last.x * self.last.y
      when '-'
        results =  self.last.x / self.last.y
    end
    results
  end
  end

class QuestionList
  include Calculator
  attr_reader :questions

  def initialize
    @questions = []
  end

  def make_questions
    @questions << HardQuestion.new

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
