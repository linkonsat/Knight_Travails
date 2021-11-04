require "pry-byebug"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Display"

class Main
    attr_accessor :main_board, :main_display, :new_knight
    def initialize
        @main_board = GameBoard.new
    end

    def home_screen
        main_display = Display.new()
        @main_display = main_display
        @main_display.board_display
        @main_display.instructions
        knight_setup(main_display)
        
    end



    def knight_setup(main_display)
        new_knight = Knight.new()
        @new_knight = new_knight
        @new_knight.set_start_end
        @main_board.set_start(@new_knight.start_position,@new_knight)
        
    end

    def piece_selection(piece = @new_knight)
        return piece
    end

    def round
    piece = piece_selection()
    @main_display.board_display
    @main_display.instructions
    piece.valid_move?(@main_board)
        binding.pry
    end
end

new_game = Main.new()
new_game.home_screen
new_game.piece_selection
new_game.round