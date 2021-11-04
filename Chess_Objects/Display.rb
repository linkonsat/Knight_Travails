require_relative "Board"
require_relative "Display_Messagges"
require 'erb'
class Display
    include Display_Messagges
    def initialize
    end

    def occupied?
    end

    def board_display
        template = File.read('./Chess_Objects/displayboard.erb')
        erb_template = ERB.new template
        board = GameBoard.new()
        board_guide = board.guide 
        board_grid = board.board
        board_terminal_display = erb_template.result(binding)
        save_board_display(board_terminal_display)
        puts board_terminal_display
    end

    def save_board_display(board_terminal_display)
        Dir.mkdir('board_display') unless Dir.exist?('board_display')
        filename ="board_display/displayboard.html"
        File.open(filename,'w') do  |file|
        file.puts board_terminal_display
        end
    end
end
