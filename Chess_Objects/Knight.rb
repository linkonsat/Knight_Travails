require_relative "Board"

class Knight
    attr_accessor :knight, :start_position, :end_position, :current_position

    def initialize
        @knight = "white_knight"
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

    def set_start(coordinates,board)

    end
    #validate move from 00 to 21 and test a move off the board returns invalid and a move that is not predefined is invalid.     
    def move(input)
   
    end

    def position_reached?

    end

    def valid_move?(coordinates,board)
        
    end

    def random_move_generator
    end
end