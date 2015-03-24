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
    def beep
        'beep beep boop'
    end

end
