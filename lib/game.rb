class Game
  attr_accessor :game_on
  attr_reader :board, :winner, :draw

  def initialize
    @game_on = true
    @winner = false
    @draw = false
    @board = %w[1 2 3 4 5 6 7 8 9]
    @winner_con = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  def get_move(move, mark)
    if board.any? { |n| move == n } && move.to_i != 0
      board[move.to_i - 1] = mark
      true
    else
      false
    end
  end

  def winner?
    if @winner_con.any? { |con| con.all? { |spc| board[spc] == 'X' } || con.all? { |spc| board[spc] == 'O' } }
      @winner = true
    end
  end

  def draw?
    @draw = true if board.all? { |space| %w[X O].include? space }
  end
end
