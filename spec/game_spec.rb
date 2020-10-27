#spec/game_spec.rb

require '../lib/game.rb'

describe Game do
  describe '#get_move' do
    it 'returns true if valid move' do
      game = Game.new
      expect(game.get_move('1', 'X')).to eql(true)
    end

    it 'returns false if invalid move' do
      game = Game.new
      expect(game.get_move('s', 'X')).to eql(false)
    end
  end
  describe '#winner?' do
    it 'returns true if one of the condition is true' do
      game = Game.new
      game.get_move('1', 'X')
      game.get_move('2', 'X')
      game.get_move('3', 'X')
      expect(game.winner?).to eql(true)
    end
    it 'returns false if combination is not valid' do
      game = Game.new
      expect(game.winner?).to eql(nil)
    end
  end
  describe '#draw?' do
    it 'returns draw if there is no empty spaces' do
      game = Game.new
      game.get_move('1', 'X')
      game.get_move('2', 'X')
      game.get_move('3', 'X')
      game.get_move('4', 'X')
      game.get_move('5', 'X')
      game.get_move('6', 'X')
      game.get_move('7', 'X')
      game.get_move('8', 'X')
      game.get_move('9', 'X')
      expect(game.draw?).to eql(true)
    end
    it 'returns nil' do
      game = Game.new
      expect(game.draw?).to eql(nil)
    end
  end
end
