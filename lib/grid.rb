class Grid
    
    def initialize()
        @robot_map = {}
    end

	def get_robot_count
		@robot_map.length		
	end

	def add_robot(key, rob)
		@robot_map[key] = rob
	end

	def get_robot(key)
		@robot_map[key]		
	end

	def get_all_robot_location
		@robot_map.map do |key, robot|
			"#{key}: #{robot.get_location} facing #{robot.get_direction}"
		end
	end
end
