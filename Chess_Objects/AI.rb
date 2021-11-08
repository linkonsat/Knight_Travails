require "./Chess_Objects/knight_data/weighted_edge_graph"
class AI
    attr_accessor :current_piece, :picked_pieces, :board

    def initialize(board)
        @board = board
    end
    def pickable_pieces(pieces)
       @picked_pieces = pieces
       
    end
    def choose_piece
        @current_piece = @picked_pieces
    end

    def move_data(peice = @current_piece, board)
        return new_graph = WeightedEdgeGraph.new(peice,board)
    end
    def find_shortest_path
        initial_move_data = move_data(piece = @current_piece, board)
        initial_move_data.grid_creation
    end
    def move_piece
        
    end
end