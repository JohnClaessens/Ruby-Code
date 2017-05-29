# John Claessens debug week 5
# there are 5 errors

until $test == "done"
states = ("first" => "Nevada",
            "second" => "California",
            "third" => "Hawaii",
            "fourth" => "New York"
           ,"fifth" => "Colorado") 
puts "\n\n  The states I enjoyed visiting are:\n\n"
states.keys.each do |list|
   puts "\t" + states[list]
end
$test == "Done"
end