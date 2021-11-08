require "pry-byebug"

class GameBoard

    attr_accessor :board
    attr_reader :guide

    def initialize
        @board = [["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"],
                  ["[]","[]","[]","[]","[]","[]","[]","[]"]]
        @guide = [" ","0","1","2","3","4","5","6","7"]

        
    end

    def set_start(coordinates,icon)
        @board[coordinates[0]][coordinates[1]] = icon
    end

    def set_new_position(coordinates,piece)
        @board[coordinates[0]][coordinates[1]] = piece
    end
end
