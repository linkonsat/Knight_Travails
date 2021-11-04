require_relative "Board"

class Knight
    attr_accessor :knight, :start_position, :end_position

    def initialize
        @knight = "white_knight"
    end

    def set_start_end  
        split_user_input = validator
    @start_position = split_user_input[0..1]
    @end_position = split_user_input[2..3]
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

    def position_reached?
    end

    def valid_move?

    end

end