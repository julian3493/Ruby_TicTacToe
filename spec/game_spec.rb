# spec/game_spec.rb

require '../lib/game.rb'

describe Game do
  describe '#get_move' do
    it "returns true if valid move" do
      game=Game.new
      expect(game.get_move('1', 'X')).to eql(true)
    end

    it "returns false if invalid move" do
      game=Game.new
      expect(game.get_move('s', "X")).to eql(false)
    end
  end
end