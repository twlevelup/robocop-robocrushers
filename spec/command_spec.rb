require 'command'

RSpec.describe Command do
    it 'given input of "f or F" return ":Forward" ' do
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

    it 'given input of "b or B" return :Backward' do
        c = Command.new('B')
        expect(c.get_representation).to eq(:Backward)
    end

    it 'given input of "a or A" return :Arrest' do
        c = Command.new('A')
        expect(c.get_representation).to eq(:Arrest)
    end

    it 'given input of "1" return :BackToStation' do
        c = Command.new('1')
        expect(c.get_representation).to eq(:BackToStation)
    end

    it 'given input of "2" return :DoNothing' do
        c = Command.new('2')
        expect(c.get_representation).to eq(:DoNothing)
    end
end
