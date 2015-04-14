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
    
    #direction accessor
    def get_direction
        @direction
    end

    def print_outofbounds
        puts 'Robot cannot move outside of the grid'
    end

    def check_within_boundary?(x, y)
        y <= 5 && y >= 0 && x <= 5 && x >= 0
    end

    def move_forward!
        if @direction == :N
            if check_within_boundary?(@x, @y+1)
                @y += 1
            else
                print_outofbounds
            end
        elsif @direction == :E
            if check_within_boundary?(@x+1, @y)
                @x += 1
            else 
                print_outofbounds
            end 
        elsif @direction == :S
            if check_within_boundary?(@x, @y-1)
                @y -= 1
            else
                print_outofbounds
            end
        elsif @direction == :W
            if check_within_boundary?(@x-1, @y)
                @x -= 1
            else
                print_outofbounds
            end 
        end
    end
    
    def move_backward!
        if @direction == :N
            if check_within_boundary?(@x, @y-1)
                @y -= 1
            else
                print_outofbounds
            end
        elsif @direction == :E
            if check_within_boundary?(@x-1, @y)
                @x -= 1
            else
                print_outofbounds
            end
        elsif @direction == :S
            if check_within_boundary?(@x, @y+1)
                @y += 1
            else
                print_outofbounds
            end
        elsif @direction == :W
            if check_within_boundary?(@x+1, @y)
                @x += 1
            else
                print_outofbounds
            end
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
end
