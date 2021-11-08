class Vertice
attr_accessor :knight, :board, :child_edge, :parent_edge
    def initialize(knight,board)
        @knight = knight
        @board = board
        @parent_edge = nil
    end

    def set_edges(vertice_list)
    @child_edge = vertice_list
    end

    def set_parent_edge(parent_vertice)
        @parent_edge = parent_vertice
    end

    

end