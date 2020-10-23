class Player
  attr_accessor :valid
  attr_reader :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
    @valid = false
  end
end
