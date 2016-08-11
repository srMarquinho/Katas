require "ship"
require "player"

# INSTRUCTIONS:
# In the command line
# CREATE A PLAYER = player1 = Player.new
# CREATE SHIPS = ship = Ship.new(row, columm, length)
# PLACING A SHIP HORIZONTALY = player1.board.place_horizontal(ship)
# PLACING A SHIP VERTICALY = player1.board.place_vertical(ship)
# SEE PLAYER BOARD = print palyer1.board.see_board
# ATTACK = p1.board.fire_at(row,columm)

p1 = Player.new

ship1 = Ship.new(2,2)
p1.board.place_horizontal(ship1)

ship2 = Ship.new(6,6,5)
p1.board.place_vertical(ship2)

p1.board.fire_at(2,2)

print p1.board.see_board
