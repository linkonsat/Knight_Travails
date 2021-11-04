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
        @guide = [" ","1","2","3","4","5","6","7","8"]

        
    end

    def set_start(coordinates,icon)
        @board[coordinates[0]][coordinates[1]] = icon
        binding.pry
    end

    def set_new_position(coordinates,icon)
    end
end
