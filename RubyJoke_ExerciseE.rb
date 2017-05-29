#--------------------------------------------------------------------------
# John Claessens
# WEB312-A347
# Bellevue University
# 4/6/17
# Assignment 1.1
#
# Script Name: RubyJoke.rb
# Version: 1.0
# Author: Jerry Lee Ford, Jr.
# Date: March 2010
# Web Site: www.rubycode.com
# Last Update: 1/13/10 - Modified script comments 
# Last Update: 4/6/17 - Modified jokes and website comments. Also added copyright and website to end of file
#
# Description: This Ruby script tells a series of 5 humorous jokes
# 
#--------------------------------------------------------------------------


# Define custom classes ---------------------------------------------------

#Define a class representing the console window
class Screen
  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
  end
end


# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Initialize a new Screen object

#Execute the Screen object's cls method in order to clear the screen
Console_Screen.cls

#Prompt the player for permission to begin the game
puts "Would you like to hear a few funny jokes? (y/n)"

#Collect the player's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Sorry to hear that. Please return and play again soon."

else
  
  Console_Screen.cls  #Clear the display area

  #Display the beginning of the first joke
  puts "What did the DNA say to the other DNA? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Do these genes make my butt look fat.! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
 
  #Display the beginning of the second joke
  puts "What has 18 legs and catches flies? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "A baseball team! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the third joke
  puts "What do you call a boomerang that doesn't come back? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "A stick! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fourth joke
  puts "Did you hear about the two antennas that got married? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "The ceremony was long and boring, but the reception was great! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fifth joke
  puts "What's it called when a blonde blows in another blonde's ear? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Data transfer! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue

  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the sixth joke
  puts "How many IT guys does it take to screw in a light bulb? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "None, that's a Facilities problem! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
 
  #Display the beginning of the seventh joke
  puts "What do you call cheese that doesn't belong to you? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Nacho cheese! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the eighth joke
  puts "How do you know if a chef is a clown? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "The food tastes funny! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the nineth joke
  puts "Why did the orange stop rolling down the hill? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "It ran out of juice! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the tenth joke
  puts "Why did the coach give his football team lighters? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "They kept losing their matches! (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  Console_Screen.cls  #Clear the display area

  puts "Thanks for playing the Ruby Joke game!"
  puts "Copyright 2017"
  puts "www.rubycode.com"

end


