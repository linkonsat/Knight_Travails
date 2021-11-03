require_relative "Board"
require 'erb'
class Display
    def initialize
    end

    def board_display
        template = File.read('displayboard.erb')
        erb_template = ERB.new template
        board = GameBoard.new()
        board_guide = board.guide 
        board_grid = board.board
        board_terminal_display = erb_template.result(binding)
        save_board_display(board_terminal_display)
        board_terminal_display
    end

    def save_board_display(board_terminal_display)
        Dir.mkdir('board_display') unless Dir.exist?('board_display')
        filename ="board_display/displayboard.html"
        File.open(filename,'w') do  |file|
            binding.pry
        file.puts board_terminal_display
        end
    end
end

test = Display.new()
test.board_display