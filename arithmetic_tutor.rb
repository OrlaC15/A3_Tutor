require_relative 'question_list.rb'
require_relative 'player.rb'
class ArithmeticTutor < Player

  attr_accessor :user_answer
  attr_reader :number_of_questions

  def initialize (name, number_of_questions, seed)
    super name
    @right=0
    srand(seed)
    @number_of_questions = number_of_questions
    @questions = QuestionList.new
    @statistics = ScoreBoard.new
  end

  def start_game_msg
    puts "Welcome to the Arithmetic Tutor,#{@name}\n"
  end

  def ask_question
    @questions.make_questions
    puts @questions.last.print_questions
  end

  def get_answer
    @user_answer = gets.chomp.to_i
  end

  def is_correct?
    if @user_answer == @questions.answer
      @user_answer = :Correct
      @right = @right+1
    else
      @user_answer = :Incorrect
    end
    @number_of_questions-=1

    add_to scoreboard
  end

  def is_game_over?
    if @number_of_questions<=0
      true
    else
      false
    end
  end
  def add_to_scoreboard
    @statistics.add @question_list.last.to_s, @user_answer
  end


  def results
    puts "Game Over You got #{@right} questions out of 10 correct"
  end

end
