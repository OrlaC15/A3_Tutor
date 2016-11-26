require_relative 'question.rb'
require_relative 'easy_question.rb'
require_relative 'medium_question.rb'
require_relative 'hard_question.rb'

module Calculator
  def answer
    case self.last.operation
      when '*'
        results = self.last.x * self.last.y
      when '/'
        results = self.last.x / self.last.y
      when '+'
        results = self.last.x * self.last.y
      when '-'
        results = self.last.x / self.last.y
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

  def make_questions(level_number)

    case level_number
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

  def print_questions
    self.each do |question|
      question.to_s
    end
  end

  def last
    @questions.last
  end
  def to_string
    self.each do |question|
      question.to_s
    end
    end
end
