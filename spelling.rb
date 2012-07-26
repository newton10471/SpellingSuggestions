

def score(finder, target)
	subcursor = 0
	currentscore = 0
	topscore = 0 

	target_chars = target.split('')
	finder_chars = finder.split('')

	target_chars.each_with_index do |char, topcursor|
		p "#{char}, #{topcursor}"

		# need to now cycle through finder's chars, looking for matches
		while (finder_chars[subcursor] == char)
			currentscore += 1
			subcursor += 1
		end

		topcursor += 1
		
		# if finder_chars[subcursor] == char
		# 	currentscore += 1
		# end

	end
end

p score("remimance", "remembrance")