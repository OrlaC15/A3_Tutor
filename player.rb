class Player
  def initialize name
    @name = name
  end
  def play_game
    start_game_msg
    while !is_game_over?
      ask_question
      get_answer
      is_correct?
    end
    results
  end
end
