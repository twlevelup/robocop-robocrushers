require './grid'
require './command'
require './robocop'

puts "Welcome to Robocop-Robocrushers!"
puts ''
puts 'How many robots do you want to activate ?'
robot_counter = gets.chomp.to_f
while (robot_counter <= 0 or robot_counter % 1 != 0)
	puts 'Number of robots must be a whole number greater than 0 (zero)'
	puts 'How many robots do you want to activate ?'
	robot_counter = gets.chomp.to_f
end
robot_counter = robot_counter.to_i
puts "You have #{robot_counter} active robot(s)."

string = ""
if robot_counter < 5
	for index in 1..robot_counter
		if index == robot_counter
			string += "R#{index}"
		else
			string += "R#{index}, "
		end
	end
else
	for index in 1..2
		string += "R#{index}, "
	end
	string += "..... , "

	string += "R#{robot_counter-1}, "
	string += "R#{robot_counter}"
end
puts string	

city_grid = Grid.new(robot_counter)

def parse_input(cmd)
    robot_identifier = cmd[0].to_f
    if (robot_identifier % 1 != 0 and robot_identifier > 0)
       puts 'Error: first argument must be a whole integer greater than 0 !'
       false
    else
        true
    end
end

while true do 
    print "Command: "
	cmd = gets.chomp.to_s
    cmd = cmd.split(", ")
    #If command has 2 arguments
    if cmd.length == 2
    	newCmd = Command.new(cmd[1])
	    if (parse_input(cmd) == true)   
	        if (current_robot = city_grid.get_robot(cmd[0].to_i))
	        	vcmd = newCmd.get_representation
	            current_robot.interpret(vcmd)
                #Save the robot number for later use
                robot_number = cmd[0]
	        end
	    end
    #If command has only one argument
    elsif cmd.length == 1
    	newCmd = Command.new(cmd[0])
    	vcmd = newCmd.get_representation

    	if(vcmd == :PrintAll)
    		robot_info = city_grid.get_all_robot_location
    		robot_info.each {|info| puts info}

        elsif (vcmd == :BackToStation)
            current_robot.go_back_to_station
            location = current_robot.get_location
            direction = current_robot.get_direction
            puts "The arrested person has been transfered to the police station."
            puts "R#{robot_number}: #{location} facing #{direction}"
            
    	elsif (vcmd == :DoNothing)
            puts "R#{robot_number}: has arrested #{current_robot.number_of_arrest} person."

    	elsif (vcmd == :Quit)
    		puts "Thank you for using this controller !"
    		break
    	else
    		puts "Error: Command is not recognized !"
    	end
    else
    	puts "Error: Command is not recognized !"
    end

    #print a blank line
    puts ""
end
