require_relative 'question_list.rb'
require_relative 'stage.rb'
require_relative 'score_board.rb'

require_relative 'player.rb'

class ArithmeticTutor < Player
  attr_accessor :this_answer, :last_answer
  attr_reader :number_of_questions,:stage

  def initialize (name,number_of_questions,seed)
    super name
    srand(seed)
    @number_of_questions = number_of_questions
    @questions = QuestionList.new
    @statistics = ScoreBoard.new
    @stage = Stage.new 1, 3
    @last_answer = :Initial
    @points=0
  end

  def start_game_msg
    puts "Welcome to the Arithmetic Tutor,#{@name}\n
   Here are your #{@number_of_questions} questions "
  end

  def ask_question
    @questions.make_question @stage.stage
    puts @questions.last.print_questions
  end

  def get_answer
    @this_answer = gets.chomp.to_i
  end

  def is_correct?
    @this_answer == @questions.answer ? @this_answer = :Correct : @this_answer = :Incorrect
    add_result
    score
  end

  def check_level?
    if @this_answer==@last_answer
      if   @this_answer==:Correct
        @stage.level_up
      else
        @stage.level_down
      end
      @last_answer = :Initial
    else
      @last_answer = @this_answer
    end
    @number_of_questions-=1
  end

  def score
    if  @this_answer == :Correct
      update_score @stage.stage
    else
      update_score 0
    end
  end

  def add_result
    @statistics.add @questions.last.to_s, @this_answer
  end

  def is_game_over?
    if  @number_of_questions<=0
      true
    else
      false
    end
  end

  def print_all_stats
    puts @statistics.to_s
    puts to_s
  end
  def update_score number
    @points+=number
  end

  def to_s
    "Game Over!\nPoints: #{@points}"
  end

end