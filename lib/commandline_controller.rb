valid_commands = ['f', 'l', 'q']

while true do 
	print "Enter command: "
	cmd = gets.chomp.to_s.downcase

	if !valid_commands.include? cmd
		puts "not_valid"
	end
end