class Robocop
    
    def initialize(x,y,direction)
        @x = x
        @y = y
        @direction = direction
    end

    #location accessor
    def get_location
        [@x,@y]
    end

    def interpret(cmd)
	case cmd
	when :Forward
		move_forward!
	when :Backward
		move_backward!
	when :Left
		turn_left!
	when :Right
		turn_right!
	else
		print_error('Invalid command specified')
	end
	print_position
    end
    
    #direction accessor
    def get_direction
        @direction
    end

    def print_outofbounds
        puts 'Robot cannot move outside of the grid'
    end

    def print_position
	puts "The Robocop is now at intersection (#{@x},#{@y}), and is facing #{@direction}."
    end

    def print_error(msg)
	puts msg
    end

    def check_within_boundary?(x, y)
        y <= 5 && y >= 0 && x <= 5 && x >= 0
    end

    def move_forward!
        if @direction == :N
            check_and_move!(@x, @y+1)
        elsif @direction == :E
            check_and_move!(@x+1, @y)
        elsif @direction == :S
            check_and_move!(@x, @y-1)
        elsif @direction == :W
            check_and_move!(@x-1, @y)
        end
    end
    
    def check_and_move!(x, y)
        if check_within_boundary?(x, y)
            @x = x
            @y = y
        else
            print_outofbounds
        end
    end

    def move_backward!
        if @direction == :N
            check_and_move!(@x, @y-1)
        elsif @direction == :E
            check_and_move!(@x-1, @y)
        elsif @direction == :S
            check_and_move!(@x, @y+1)
        elsif @direction == :W
            check_and_move!(@x+1, @y)
        end
    end  
    def beep
        'beep beep boop'
    end

    def turn_left!
        if @direction == :N
    	   @direction = :W
        elsif @direction == :W
            @direction = :S
        elsif @direction == :S
            @direction = :E
        elsif @direction == :E
            @direction = :N
        end
    end

	def turn_right!
		if @direction == :N
			@direction = :E
		elsif @direction == :W
			@direction = :N
		elsif @direction == :S
			@direction = :W
		elsif @direction == :E
			@direction = :S
		end
	end
end
