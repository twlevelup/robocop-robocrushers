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
            @y = 1
        elsif @direction == :E
            @x += 1
        end
    end
    
    def beep
        'beep beep boop'
    end


    def boo
    	'boo boo boo'
    end
    
    def nein
    	'nein nein nein x'
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
