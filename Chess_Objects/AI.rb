require "./knight_data/weighted_edge_graph"
class AI
    attr_accessor :current_piece, :pickable_pieces

    def pickable_pieces(pieces)
       @pickable_pieces = pieces
       
    end
    def choose_piece(piece)
        @current_piece = @pickable_pieces[0]
    end

    def move_data(peice = @current_piece, board)
        new_graph = WeightedEdgeGraph.new(peice,board)
        binding.pry
    end
    def find_shortest_path

    end
    def move_piece
        
    end
end