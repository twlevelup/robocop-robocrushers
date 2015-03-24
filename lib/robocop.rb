class Robocop
    
    def initialize(x,y,direction)
        @x = x
        @y = y
        @direction = direction
    end

    def get_location
        [@x,@y, @direction]
    end
    
    def move_forward!
        @y = 1
    end


    def direction
        @direction
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
    	@direction = :W
    end
end
