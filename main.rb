require "pry-byebug"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Display"

class Main

    def initialize
    end

    def home_screen
        main_display = Display.new()
        main_display.board_display
        main_display.instructions
        knight_directions
        
    end

    def knight_directions
        new_knight = Knight.new()
        new_knight.set_start_end
        binding.pry
    end
end

new_game = Main.new()
new_game.home_screen