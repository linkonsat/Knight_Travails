require_relative "Board"

class Knight
    attr_accessor :knight, :start_position, :end_position, :current_position

    def initialize(current_position = nil,end_position = nil)
        @knight = "white_knight"
        @current_position = current_position
        @start_position = nil
        @end_position = end_position
    end

    def set_start_end  
        split_user_input = validator
    @start_position = split_user_input[0..1]
    @end_position = split_user_input[2..3]
    @current_position = @start_position
    end

    def validator
        user_input = ["0"]     
        until user_input.length == 4
            user_input = gets.chomp
            filter = user_input.scan(/[0-9]/ )
            split_user_input = filter.map { |item| item.to_i }
            user_input = split_user_input
            if (split_user_input.length < 4 || split_user_input.length > 4)
                puts "Enter in only 4 numbers. less from 1-8."
            elsif (split_user_input.length == 4)
                break
            end
        end
        return split_user_input
    end

    #validate move from 00 to 21 and test a move off the board returns invalid and a move that is not predefined is invalid.     

    def valid_move?(coordinates,board)
        valid_moves = legal_moves_knight()
        if (valid_moves.any?(coordinates) && in_board?(coordinates,board))
            return true
        else
            return false
        end
        
    end

    def legal_moves_knight
        return [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[1,-2],[-1,2],[-1,-2]]
    end
    def in_board?(coordinates,board)
        found_knight = board.board.flatten.select { |item| item.class == Knight && item.knight == "white_knight"}
        knight_vertical_index = found_knight[0].current_position[0] + coordinates[0]
        knight_horizontal_index = found_knight[0].current_position[1] + coordinates[1]
        if (knight_vertical_index < 0 || knight_horizontal_index < 0 || knight_vertical_index > 7 || knight_horizontal_index > 7)
            return false
        else
            return true
        end

    end


end