require "ship"

class Battlefield

  attr_reader :board

  SIZE = 10

  def initialize
    @board = board_create
  end


  def see_board
    "  #{stringify_columm_number} \n#{stringify_row}"
  end

  def place_vertical(ship)
    @board.each_index do |r|
      rows = @board[r]
      rows.each_index do |c|
        if ship.row-1 == r && ship.col-1 == c
          ship.length.times do |i|
            raise "Ships can't be out of range" if r+i >= SIZE
            raise "Ships can't overlap " if @board[r+i][c] == "O"
            @board[r+i][c] = "O"
          end
        end
      end
    end
  end

  def place_horizontal(ship)
    @board.each_index do |r|
      rows = @board[r]
      rows.each_index do |c|
        if ship.row-1 == r && ship.col-1 == c
          ship.length.times do |i|
            raise "Ships can't be out of range" if c+i >= SIZE
            raise "Ships can't overlap " if @board[r][c+i] == "O"
            @board[r][c+i] = "O"
          end
        end
      end
    end
  end

  def fire_at(row, col)
    @board.each_index do |r|
      rows = @board[r]
      rows.each_index do |c|
        if row-1 == r && col-1 == c
          @board[r][c] = "X"
        end
      end
    end
  end

  private

  def board_create
    row_create = Array.new(SIZE," ")
    Array.new(SIZE) { row_create.clone }
  end

  def stringify_row
    str = ""
    @board.each.with_index do |row, row_number|
      str += "#{row_number+1} #{row}\n"
    end
    str
  end

  def stringify_columm_number
    Array.new(SIZE) {|i| "#{i+1}" }
  end
end
