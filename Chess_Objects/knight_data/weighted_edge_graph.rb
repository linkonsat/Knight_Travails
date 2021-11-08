require_relative "vertice"
require "./Chess_Objects/Knight"
require "./Chess_Objects/Board"
class WeightedEdgeGraph

    attr_accessor :piece, :board
    def initialize(piece,board)
        @piece = piece
        @board = board
    end

    def shortest_path(grid)
    end_target = grid.knight.end_position
    return find_path(grid)
    end

    def find_path(target_knight)
        parent_node_state = [target_knight]
        path = []
        until parent_node_state[0].nil?
            path.push(parent_node_state[0].knight.current_position)
            parent_node_state[0] = parent_node_state[0].parent_edge
        end
        return path
    end
    def grid_creation
        created_grid = vertice_generator(@piece,@board)

    end

    def vertice_generator(knight, board)
        #takes in a new knight and board
        grid = []
        grid.push(Vertice.new(knight,board))
         end_knight = grid[0].knight.end_position
         i = 0
         until grid.last.knight.current_position == end_knight
         grid.concat(new_list_level(grid[i]))
            i += 1
         end
        

        return shortest_path(grid.last)
        binding.pry

        
    end
    
    def new_list_level(vertice)
        
        new_list = []
        new_edges = vertice.knight.legal_moves_knight
        i = 0
        new_vertices = 0
        until i > new_edges.length - 1 
            if (vertice.knight.in_board?(new_edges[i],vertice.board))
                new_board = GameBoard.new()
                new_knight = Knight.new(update_knight(new_edges[i],vertice.knight),vertice.knight.end_position)
                new_board.set_new_position(new_knight.current_position,new_knight)
            new_list.push(Vertice.new(new_knight,new_board))   
            new_list[new_vertices].set_parent_edge(vertice)
            new_vertices += 1
            end
            if(new_list[new_vertices - 1] != nil && new_list[new_vertices - 1].knight.current_position == vertice.knight.end_position)
                i += new_edges.length
            else
            i += 1
            end
        end
        vertice.set_edges(new_list)
        return new_list
    end

    def update_knight(coordinates,knight)
        new_position_vertical = knight.current_position[0] + coordinates[0]
        new_position_horizontal = knight.current_position[1] + coordinates[1]
        return [new_position_vertical,new_position_horizontal]
    end

end