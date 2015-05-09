class Command

  def initialize(input)
		@descriptions = {'l'=> :Left, 'r'=> :Right, 'f' => :Forward, 'b' => :Backward, 
                     'a' => :Arrest, 'v' => :PrintAll, 'q' => :Quit,
                     '1' => :BackToStation, '2' => :DoNothing }

		input.downcase!
       	if (@descriptions[input])
       		@cmd = @descriptions[input]		
       	end

    end

    def get_representation
    	@cmd
    end
end
