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
 	cmd = cmd.split(", ")
    if !(Integer(cmd[0]) > 0)
        puts 'Invalid input'
        false
    else
        true
    end
end

while true do 
    print "Command: "
	cmd = gets.chomp.to_s
    parse_input(cmd)
	cmd = cmd.split(", ")
    newCmd = Command.new(cmd[1])
    current_robot = city_grid.get_robot(cmd[0].to_i)
    current_robot.interpret(newCmd.get_representation)
end
