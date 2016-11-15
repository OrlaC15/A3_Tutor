require_relative 'question.rb'
require_relative 'arithmetic_tutor.rb'
require_relative 'question_list.rb'
require_relative 'level1_question.rb'


data = IO.readlines('tutor.dat')
player=ArithmeticTutor.new  data[0], data[1].to_i, data[2].to_i
player.play_game
