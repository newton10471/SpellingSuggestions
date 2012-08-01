

def score(finder, target)
	findercount = 0
	targetcount = 0
	matchcount = 0
	topmatchcount = 0

	finder_chars = finder.split('')
	target_chars = target.split('')
	
	while (findercount < finder.length)
		p "#{finder_chars[findercount]}, #{findercount}"
		if (finderchar == targetchar[targetcount]) # current two characters match
			matchcount += 1
			
		else # they don't match
			# advance the 2nd (or 3rd) cursor until it finds a match or finishes the word
		  # while (finderchar )
		  # end
		end

		findercount += 1
		targetcount += 1
	end
end

p score("remimance", "remembrance")