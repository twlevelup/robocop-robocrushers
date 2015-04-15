require 'command'

RSpec.describe Command do
    it 'given input of "f" return ":Forward" ' do
        c = Command.new('f')
        expect(c.get_representation).to eq(:Forward)
  	end
    
    it 'given input of "r or R" return :Right' do
    	c = Command.new('R')
    	expect(c.get_representation).to eq (:Right)
    end

    it 'given input of "l or L" return :Left' do
    	c = Command.new('l')
    	expect(c.get_representation).to eq (:Left)
    end

end
