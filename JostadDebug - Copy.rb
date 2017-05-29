puts "Put in a number between 1 and 12"
a = gets.chomp.to_i # added the s to get

if  (a >= 1 && a <= 6)# moved the a inside the parenthesis and swapped the < > signs
puts "Elementary School"
elsif  (a >= 7 && a <= 8)# moved the a inside the parenthesis and swapped the < > signs
puts "Middle School" # added the close quotations
elsif  (a >= 9 && a <= 12)# moved the a inside the parenthesis and swapped the < > signs
puts "High School"
else
puts "School is for fools"
end