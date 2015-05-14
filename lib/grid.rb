require_relative 'robocop'

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
			"R#{key}: #{robot.get_location} facing #{robot.get_direction}"
		end
	end

   def print_grid
       # string representation of grid lines
       grid_strings = Array.new(6)
       for i in 0..grid_strings.length-1
           grid_strings[i] =  "o"
           for j in 0..4 
               grid_strings[i] += "---o"
           end
       end
      
       @robot_map.map do |key, robot|
           robot_x, robot_y = robot.get_location
           robot_direction = robot.get_direction
          if  (grid_strings[5-robot_y][robot_x*4] == "o") 
               grid_strings[5-robot_y][robot_x*4] = "#{robot_direction}"
          elsif
              (grid_strings[5-robot_y][robot_x*4] == "N" or
               grid_strings[5-robot_y][robot_x*4] == "S" or
               grid_strings[5-robot_y][robot_x*4] == "E" or
               grid_strings[5-robot_y][robot_x*4] == "W")
               grid_strings[5-robot_y][robot_x*4] = "*"
          end

       end
 
       for i in 0..grid_strings.length-1
           puts grid_strings[i]
           if (i < grid_strings.length-1)
               puts '|   |   |   |   |   |'
           end
       end
      
        
    end 
end
