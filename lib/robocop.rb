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

    #Need to fix this
    def check_within_boundary?
        if @y > 5 || @y < 0 || @x > 5 || @x < 0
            return false
        end
        return true
    end

    def move_forward!
        if @direction == :N
            if @y < 5
                @y += 1
            else
                print_outofbounds
            end
        elsif @direction == :E
            if @x < 5
                @x += 1
            else 
                print_outofbounds
            end 
        elsif @direction == :S
            if (@y > 0)
                @y -= 1
            else
                print_outofbounds
            end
        elsif @direction == :W
            if (@x >0)
                @x -= 1
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
