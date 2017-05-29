# Define custom classes ---------------------------------------------------

# Define a class representing the console window
class Screen

  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
    puts "\a"  #Make a little noise to get the player's attention
  end
  
end

  # Main Script Logic -------------------------------------------------------
  Console_Screen = Screen.new  #Initialize a new Screen object
  
  Console_Screen.cls  #Clear the display area 
  
  # Prompt the player to provide some input
  print %Q{Type an integer. (Press Enter)\n\n: }
  first = STDIN.gets.to_i  #Force the player to press Enter to continue
  
  Console_Screen.cls  #Clear the display area 
  
  # Prompt the player to provide some input
  print %Q{Type another integer. (Press Enter)\n\n: }
  second = STDIN.gets.to_i  #Force the player to press Enter to continue
 
  Console_Screen.cls  #Clear the display area    
  
  # Display the results
    puts "The first number #(first) times the second number #{second} = " 
    puts #{first} * {second}



