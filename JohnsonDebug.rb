# there are 4 errors

kids = {"first" => "Alexander" , "second" => "William" , "third" => "Molly"} # added quotation marks to William and Molly, changed - to =
puts "\n\nValues belonging to the kids hash:\n\n"
kids.keys.each do |child| # changed , to .
   puts kids[child] # changed ) to ]
end