# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize

class Game
  attr_accessor :game_on
  attr_reader :board, :winner, :draw

  def initialize
    @game_on = true
    @winner = false
    @draw = false
    @board = %w[1 2 3 4 5 6 7 8 9]
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
    @win1 = board[0] == board[1] && board[1] == board[2]
    @win2 = board[3] == board[4] && board[4] == board[5]
    @win3 = board[6] == board[7] && board[7] == board[8]
    @win4 = board[0] == board[4] && board[4] == board[8]
    @win5 = board[2] == board[4] && board[4] == board[6]
    @win6 = board[0] == board[3] && board[3] == board[6]
    @win7 = board[1] == board[4] && board[4] == board[7]
    @win8 = board[2] == board[5] && board[5] == board[8]

    @winner = true if @win1 || @win2 || @win3 || @win4 || @win5 || @win6 || @win7 || @win8
  end

  def draw?
    @draw = true if board.all? { |space| %w[X O].include? space }
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
