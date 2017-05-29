# ----------------------
#  T. J. Flesher
#  Week 4 Debug Challenge
#  Focus: Loops
# ----------------------

# Main Logic

for a in 1..10 do  #Dropped the |a|
	for x in 1..10 do # changed teh 1.10 to 1..10
		print x, " "
        #got rid of the break statement that was killing the inner loop
    end # added and end statement for the inner loop
puts 
end 