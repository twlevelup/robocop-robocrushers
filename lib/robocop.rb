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

    def move_forward!
        if @direction == :N
            if @y < 5
                @y += 1
            else
                puts 'Robot cannot move outside of the grid'
            end
        elsif @direction == :E
            if @x < 5
                @x += 1
            else 
                puts 'Robot cannot move outside of the grid'
            end 
        elsif @direction == :S
            if (@y > 0)
                @y -= 1
            else
                puts 'Robot cannot move outside of the grid'
            end
        elsif @direction == :W
            if (@x >0)
                @x -= 1
            else
                puts 'Robot cannot move outside of the grid'
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
