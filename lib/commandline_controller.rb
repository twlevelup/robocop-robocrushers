require './robocop'
require './command'

robot = Robocop.new(0, 0, :N)

puts "Welcome to Robocop-Robocrushers!"
while true do 
	print "Command: "
	cmd = gets.chomp.to_s
	newCmd = Command.new(cmd)
	robot.interpret(newCmd.get_representation)	
end
