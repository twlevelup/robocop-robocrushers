class Robocop
    
    def initialize(x,y,direction)
        @x = x
        @y = y
        @direction = direction
    end

    def get_location()
        return [@x,@y, @direction]
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
end
