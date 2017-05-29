# add up numbers in an array.
    
    puts "\n  Use of ineration to add the numbers in an array.\n"
    # define the array
    list = [ 3, 6, 11. 19, 32, 57, 92 ]
    
    # define a variable named sum to hold the total value
    sum = 0
    
    #iterates throught the array and adds it to the sum variable
    list.each ( |i| sum += i )
    
    # display the results
    print "  This Array [", list.join(" "), "] adds up to #{sum}\n"