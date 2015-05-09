class Command

  def initialize(input)
		@descriptions = {'l'=> :Left, 
				 'r'=> :Right, 
				 'f' => :Forward, 
				 'b' => :Backward, 
				 'a' => :Arrest, 
				 'v' => :PrintAll, 
				 'q' => :Quit,
				 'h' => :Help,
				 '1' => :BackToStation,
				 '2' => :DoNothing}

		input.downcase!
       	if (@descriptions[input])
       		@cmd = @descriptions[input]		
       	end

    end

    def get_representation
    	@cmd
    end

	def show_help
		"\n\n======================================================\nUsage:\n\tRobocop: (robocop identifier), (command)\n\tSystem: (command)\n\nRobocop Operations:\n\tl - Turn left\n\tr - Turn right\n\tf - Move forward\n\tb - Move backward\n\ta - Make arrest\n\nSystem Operations\n\tv - Print the location of all robocops\n\th - Show help screen\n\tq - Quit\n======================================================\n\n"
	end
end
