require_relative 'question.rb'
require_relative 'hard_question.rb'
require_relative 'easy_question.rb'
require_relative 'medium_question.rb'

module Calculator
  def answer
    case self.last.operation
      when '+'
        result = self.last.x + self.last.y
      when '-'
        result= self.last.x - self.last.y
      when '*'
        result = self.last.x * self.last.y
      when '/'
        result = self.last.x / self.last.y
    end
    result
  end
end

class QuestionList
  include Calculator
  attr_reader :questions

  def initialize
    @questions = []
  end

  def make_question (stage)
    case stage
      when 1
        @questions << EasyQuestion.new
      when 2
        @questions << MediumQuestion.new
      when 3
        @questions << HardQuestion.new
    end
  end

  def each
    1.upto @questions.size do |i|
    end
  end

  def last
    @questions.last
  end

  def to_s
    self.each do |question|
      question.to_s
    end
  end
end