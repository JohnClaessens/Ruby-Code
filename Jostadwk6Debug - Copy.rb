print "Please enter a vowel and press Enter. "

input = STDIN.gets # Changed the 1 to I
input.chop! #deleted the m


if input =~ /[aeiouy]/ then #changed the \ to a /
 puts "A vowel has been submitted."

end