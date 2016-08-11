require "battlefield"

class Player

  attr_reader :board

  def initialize(board = Battlefield.new)
    @board = board
  end


end
