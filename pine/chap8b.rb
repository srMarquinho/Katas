def englishNumber number
	if number < 0
		return "Please enter a number that isn\'t negative."
	end
	if number == 0
		return "zero"
	end
	
	numString = ""
	
	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	
	left = number #
	
	write = left / 1000000000000
	left = left - write * 1000000000000
	
	if write > 0
		nonillion = englishNumber write
		numString = numString + nonillion + ' nonillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 100000000000
	left = left - write * 100000000000
	
	if write > 0
		octillion = englishNumber write
		numString = numString + octillion + ' octillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 10000000000
	left = left - write * 10000000000
	
	if write > 0
		septillion = englishNumber write
		numString = numString + septillion + ' septillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 1000000000
	left = left - write * 1000000000
	
	if write > 0
		sextillion = englishNumber write
		numString = numString + sextillion + ' sextillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 100000000
	left = left - write * 100000000
	
	if write > 0
		quintillion = englishNumber write
		numString = numString + quintillion + ' quintillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 10000000
	left = left - write * 10000000
	
	if write > 0
		quadrillion = englishNumber write
		numString = numString + quadrillion + ' quadrillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 1000000
	left = left - write * 1000000
	
	if write > 0
		trillions = englishNumber write
		numString = numString + trillions + ' trillion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 100000
	left = left - write * 100000
	
	if write > 0
		billions = englishNumber write
		numString = numString + billions + ' billion'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 10000
	left = left - write * 10000
	
	if write > 0
		millions = englishNumber write
		numString = numString + millions + ' million'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 1000 #
	left = left - write * 1000 #
	
	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 100 #
	left = left - write * 100 #
	
	if write > 0
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'
		if left > 0
			numString = numString + ' and '
		end
	end
	
	write = left / 10
	left = left - write * 10
	
	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left-1]
			left = 0
		else
			numString = numString + tensPlace[write-1]
		end
		
		if left > 0
			numString = numString + '-'
		end
	end
	
	write = left
	left = 0
	
	if write > 0
		numString = numString + onesPlace[write-1]
	end
	numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
