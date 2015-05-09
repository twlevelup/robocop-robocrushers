class Robocop
    
    def initialize(x,y,direction)
        @x = x
        @y = y
        @direction = direction
        @number_of_arrest = 0
    end

    #location accessor
    def get_location
        [@x,@y]
    end

    def set_location(x,y)
        @x = x
        @y = y
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
    when :Arrest
        arrest!
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
	puts "The Robocop is at intersection (#{@x},#{@y}), and is facing #{@direction}."
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

    def arrest!
        puts "The Robocop has made an arrest at (#{@x}, #{@y})."

        puts "Choose an option: "

        puts "1) Going back to Police Station "

        puts "2) Continue from here "
    end
end
