class Command

    def initialize(input)
		@descriptions = {'l'=> :Left, 'r'=> :Right, 'f' => :Forward, 'b' => :Backward, 'v' => :PrintAll, 'q' => :Quit}
		input.downcase!
       	if (@descriptions[input])
       		@cmd = @descriptions[input]		
       	end

    end

    def get_representation
    	@cmd
    end
end
