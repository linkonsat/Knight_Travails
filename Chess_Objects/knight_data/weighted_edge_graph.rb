require_relative "vertice"
class WeightedEdgeGraph

    attr_accessor :piece, :board
    def initialize(piece,board)
        @piece = piece
        @board = board
    end

    def grid_creation(knight, board)

    end

    def vertice_generator(knight, board)
        #takes in a new knight and board
        new_vertice = Vertice.new(knight,board)
    end
end