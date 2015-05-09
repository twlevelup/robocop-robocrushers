#require './robocop'
#require './command'

#robot = Robocop.new(0, 0, :N)

def drawGrid(cX, cY, gX, gY)
	# Convert number of intersections into city blocks that start at 0
	gX = gX - 2
	gY = gY - 2
	
	g = "\t"	
	for i in 0..gY
		cY == 0 && cX == i ? g << "X____" : g << " ____"
	end
	g << "\n\t"
	for i in 0..gY * 2
		if i % 2 == 0
			for y in 0..gX
				y == gX ? g << "|    |" : g << "|    "
			end
		else
			for y in 0..gX
				y == gX ? g << "|____|" : g << "|____"
			end
		end
		g << "\n\t"
        end	
	for i in 0..gY
		i == gY ? g << "|____|" : g << "|____"	
	end

	return g
end


x = drawGrid(0, 0, 5, 5)
puts x
