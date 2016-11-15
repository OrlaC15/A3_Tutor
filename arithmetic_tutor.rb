require_relative 'player.rb'
class ArithmeticTutor<Player
 def initialize(name, amount_of_questions, seed)
  super name
   @amount_of_questions = amount_of_questions
  @seed = seed
  @questions = QuestionList.new

 end

 def start_game_msg
    puts "Welcome to Arithmetic Tutor #{@name}"
    puts "\nNumber of questions to generate #{@amount_of_questions}"
    puts "\nThe seed #{@seed}"
 end

 def  is_game_over?

  end

 def ask_question

 end
 def get_user_answer
 end
 def check_answer
 end
  def print_results

  end
  end