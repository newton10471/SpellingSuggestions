

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
			
			p "A: matching on #{finder_chars[findercount]} at position #{findercount}, #{targetcount}}"
			matchcount += 1
			findercount += 1
			targetcount += 1

		else # they don't match
			# advance the lookahead cursor until it finds a match or finishes the word

			lookahead = targetcount
			found = true

			while (finder_chars[findercount] != target_chars[lookahead])
				lookahead += 1
				if (lookahead == (target_chars.length - 1)) # lookahead cursor hit the end without finding a match
					findercount += 1 
					# targetcount += 1
					found = false		# signal that we didn't find anything
					break
				end
			end

			# if we're here, either we found a match or lookahead went to the end without finding anything

			# set findercount and targetcount to where match was made 
			if found == true 
				targetcount = lookahead 
				matchcount += 1
				findercount += 1
				targetcount += 1	
			end
			

			p "B: matching on #{finder_chars[findercount]} at position #{findercount}, #{targetcount}}"

		  # then advance both counters to that (found) position

		end

		

		if (targetcount == (target.length - 1)) then break end
	end

	return matchcount
end

comparisons = [["remimance", "remembrance"] , ["remimance", "reminiscence"] , ["inndietlly", "immediately"] , ["inndietlly", "incidentally"]]

comparisons.each do |comparison|
	p "#{comparison[0]} #{comparison[1]} #{score(comparison[0],comparison[1])}"
end

# p score("inndietlly", "immediately")