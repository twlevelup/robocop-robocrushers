require 'robocop'
class Grid

    #Constructor
    def initialize(robot_counter=0)
    	@robot_map = {}
    	for index in 1..robot_counter
    		add_robot(index, Robocop.new(0, 0, :N))
    	end
    end

	def get_robot_count
		@robot_map.length		
	end

	def add_robot(key, rob)
		@robot_map[key] = rob
	end

	def get_robot(key)
		if (@robot_map[key])
            @robot_map[key]
        else 
            puts 'Invalid robot identifier'
            nil
        end        
	end

	def get_all_robot_location
		@robot_map.map do |key, robot|
			"#{key}: #{robot.get_location} facing #{robot.get_direction}"
		end
	end
end
