require "battlefield"

class Ship

attr_reader :row, :col, :length

  def initialize(row, col, length=4)
    @row = row
    @col = col
    @length = length
  end

end
