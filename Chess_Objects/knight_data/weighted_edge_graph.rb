require_relative "vertice"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Board"
class WeightedEdgeGraph

    attr_accessor :piece, :board
    def initialize(piece,board)
        @piece = piece
        @board = board
    end

    def shortest_path?(piece)
        if(piece.class == Knight)
            if (piece.current_position == @piece.end_position)
                return true
            else 
                return false
            end
        end
    end
    def grid_creation
        created_grid = vertice_generator(@piece,@board)

    end

    def vertice_generator(knight, board)
        #takes in a new knight and board
        grid = []
        grid.push([Vertice.new(knight,board)])
        grid.push(new_list_level(grid[0]))
        binding.pry

        
    end

    def new_list_level(vertice)
        
        new_list = []
        new_edges = vertice[0].knight.legal_moves_knight
        i = 0
        new_vertices = 0
        until i > new_edges.length - 1 
            if (vertice[0].knight.in_board?(new_edges[i],vertice[0].board))
                new_board = GameBoard.new()
                new_knight = Knight.new(update_knight(new_edges[i],vertice[0].knight))
            new_list.push(Vertice.new(new_knight,new_board.set_new_position(new_knight.current_position,new_knight)))   
            new_list[new_vertices].set_parent_edge(vertice)
            new_vertices += 1
            end
            
            if(new_list[new_vertices - 1] != nil && new_list[new_vertices - 1].knight.current_position == vertice[0].knight.end_position)
                i += new_edges.length
            else
            i += 1
            end
        end
        vertice[0].set_edges(new_list)
        return new_list
    end

    def update_knight(coordinates,knight)
        new_position_vertical = knight.current_position[0] + coordinates[0]
        new_position_horizontal = knight.current_position[1] + coordinates[1]
        return [new_position_vertical,new_position_horizontal]
    end

end