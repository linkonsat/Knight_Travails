require "pry-byebug"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Display"
require "./Chess_Objects/AI"

class Game
    attr_accessor :main_board, :main_display, :new_knight
    def initialize
        @main_board = GameBoard.new
    end

    def home_screen
        main_display = Display.new()
        @main_display = main_display
        @main_display.board_display(@main_board)
        @main_display.instructions
        knight_setup(main_display)
        
    end



    def knight_setup(main_display)
        new_knight = Knight.new()
        @new_knight = new_knight
        @new_knight.set_start_end
        @main_board.set_start(@new_knight.start_position,@new_knight)
        
    end


    def round
    @ai = setup_AI
    binding.pry
    @main_display.board_display(@main_board)
    @main_display.instructions
    piece.valid_move?(coordinates= [2,-1],@main_board)
    end

    def setup_AI(pieces = @new_knight)
        ai = AI.new()
        @ai = ai
        ai.pickable_pieces(@new_knight)
    end

    def ai_move
        
    end
end

new_game = Game.new()
new_game.home_screen
new_game.round