


=begin <----------------------------------------
lineWidth = 40

title = ["Table of Contents"]
chapters = ["Numbers", "Letters", "Variables"]
pages = ["1", "72", "118"]

puts title[0].center lineWidth
puts

# <-
#chapters.each do |chapter|
#	pages.each do |page|
#		puts (chapter.ljust(lineWidth/2)) + (page.rjust(lineWidth/2))
#	end
#end
# <-

puts (chapters[0].ljust(lineWidth/2)) + (pages[0].rjust(lineWidth/2))
puts (chapters[1].ljust(lineWidth/2)) + (pages[1].rjust(lineWidth/2))
puts (chapters[2].ljust(lineWidth/2)) + (pages[2].rjust(lineWidth/2))
=end









=begin <----------------------------------------
puts "Type in as many words as you want, blank to stop."
word = gets.chomp.to_s
words = []

while word != ""
	words.push word
	word = gets.chomp.to_s
end

words.each_index do |first|
  words.each_index do |second|
        if words[first] < words[second]
            words[first], words[second] = words[second], words[first]
        end
  end
end

print words.join(", ") + "."
puts
=end






=begin <----------------------------------------
puts "Type in as many words as you want, nil to stop."
word = gets.chomp
words = []

while word != ""
	words.push word
	word = gets.chomp
end

print words.sort.join(", ") + "."
puts
=end





=begin <----------------------------------------
puts "Enter a starting year:"
sYear = gets.chomp.to_i
puts "Enter a ending year:"
eYear = gets.chomp.to_i
puts ""

if eYear < sYear
	sYear, eYear = eYear, sYear
end

for i in sYear..eYear	
	if i % 400 == 0
		print i.to_s + " "
	elsif i % 100 == 0
		next
	elsif i % 4 == 0
		print i.to_s + " "
	else
		next
	end
end
puts ""
=end






=begin <----------------------------------------
puts "SHOUT..."
bye = 0

while bye < 3
command = gets.chomp
	if command == "BYE"
		puts "Bye?"
		bye = (bye + 1)
	elsif command != command.upcase
		puts "HUH?!  SPEAK UP, SONNY!"
		bye = 0
	else
		puts "NO, NOT SINCE #{1930 + rand(20)}!"
		bye = 0
	end
end

puts "Bye, honey!"
=end





=begin <----------------------------------------
for i in (100).downto(0)
	if i == 1
		puts " #{i} bottle of beer on the wall!"
		puts
	elsif i == 0
		puts " No bottles of beer on the wall!"
		puts
	else
	puts " #{i} bottles of beer on the wall!"
	puts
	end
end
=end





=begin <----------------------------------------
command = ''

while command != 'bye'
	puts command
	command = gets.chomp
end

puts 'come again soon!'
=end







=begin <----------------------------------------
lineWidth = 50

puts "Table of Contents" .center lineWidth
puts "Chapter 1: Numbers" .ljust(lineWidth/2) + "page 1" .rjust(lineWidth/2)
puts "Chapter 2: Letters" .ljust(lineWidth/2) + "page 72" .rjust(lineWidth/2)
puts ("Chapter 3: Variables" .ljust (lineWidth/2)) + ("page 118" .rjust(lineWidth/2))
=end