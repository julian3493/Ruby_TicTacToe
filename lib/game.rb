class Game
  attr_accessor :game_on
  attr_reader :board, :winner, :draw

  def initialize
    @game_on = true
    @winner = false
    @draw = false
    @board = %w[1 2 3 4 5 6 7 8 9]
  end

  def getMove(move, mark)
    if board.any? { |n| move == n } && move.to_i != 0
      board[move.to_i - 1] = mark
      true
    else
      false
    end
  end

  def is_winner
    if board[0] == board[1] && board[1] == board[2] || board[3] == board[4] && board[4] == board[5]
      @winner = true
    elsif board[6] == board[7] && board[7] == board[8] || board[0] == board[4] && board[4] == board[8]
      @winner = true
    elsif board[2] == board[4] && board[4] == board[6] || board[0] == board[3] && board[3] == board[6]
      @winner = true
    elsif board[1] == board[4] && board[4] == board[7] || board[2] == board[5] && board[5] == board[8]
      @winner = true
    end
  end

  def is_draw
    if board.all? { |space| space == "X" || space == "O" }
      @draw = true
    end
  end
end
