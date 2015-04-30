require './robocop'
require './command'

while true do
	print "Command: "
	cmd = gets.chomp.to_s
	newCmd = Command.new(cmd)
	robot.interpret(newCmd.get_representation)	
end
