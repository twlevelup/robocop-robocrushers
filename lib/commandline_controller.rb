require './robocop'
require './command'
require './grid'

robot = Robocop.new(0, 0, :N)
city_grid = Grid.new()

puts "Welcome to Robocop-Robocrushers!"
while true do 
    print "Command: "
	cmd = gets.chomp.to_s
	cmd = cmd.split(", ")
    newCmd = Command.new(cmd[1])
    current_robot = city_grid.get_robot(cmd[0])
    current_robot.interpret(newCmd.get_representation)

end
