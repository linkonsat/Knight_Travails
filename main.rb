require "pry-byebug"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Display"

class Main
    attr_accessor :main_board
    def initialize
        @main_board = GameBoard.new
    end

    def home_screen
        main_display = Display.new()
        main_display.board_display
        main_display.instructions
        knight_directions(main_display)
        
    end



    def knight_directions(main_display)
        new_knight = Knight.new()
        new_knight.set_start_end
        @main_board.set_start(new_knight.start_position,new_knight)
        round(main_display,new_knight)
        
    end

    def round(main_display,knight)
    main_display.board_display
    main_display.instructions
    end
end

new_game = Main.new()
new_game.home_screen