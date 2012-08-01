

def score(finder, target)
	findercount = 0
	targetcount = 0
	matchcount = 0
	topmatchcount = 0

	finder_chars = finder.split('')
	target_chars = target.split('')
	
	while (findercount < finder.length)
		# p "#{finder_chars[findercount]}, #{findercount}"

		if (finder_chars[findercount] == target_chars[targetcount]) # current two characters match
			matchcount += 1
			
		else # they don't match
			# advance the 2nd (or 3rd) cursor until it finds a match or finishes the word
			lookahead = targetcount
			while (finder_chars[findercount] != target_chars[lookahead])
				lookahead += 1
				if lookahead > target_chars.length # lookahead cursor hit the end without finding a match
					findercount += 1 
					targetcount += 1
					break
				end
			end

			matchcount += 1

		  # then advance both counters to that (found) position

		end

		findercount += 1
		targetcount += 1

		if ((findercount > finder.length) || (targetcount > target.length)) then break end
	end

	return matchcount
end

comparisons = [["remimance", "remembrance"] , ["remimance", "reminiscence"] , ["inndietlly", "immediately"] , ["inndietlly", "incidentally"]]

comparisons.each do |comparison|
	p "#{comparison[0]} #{comparison[1]} #{score(comparison[0],comparison[1])}"
end