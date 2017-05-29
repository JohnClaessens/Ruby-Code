#--------------------------------------------------------------------------
#
# John Claessens
# Assignment 3.1
# April 26, 2017
# 
# Script Name: TypingChallenge.rb
# Version:     1.0
# Author:      Jerry Lee Ford, Jr.
# Date:        March 2010
# 
# Description: This Ruby script demonstrates how to apply conditional logic 
#              in order to analyze user input and control script execution 
#              through the development of a computer typing test that
#              evaluates the player's typing skills.
#
#--------------------------------------------------------------------------


# Define custom classes ---------------------------------------------------

#Define a class representing the console window
class Screen

  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
    puts "\a"  #Make a little noise to get the player's attention
  end
  
  def pause    #Define a method that pauses the display area
    STDIN.gets  #Execute the STDIN class's gets method to pause script
                #execution until the player presses the Enter key
  end
  
end

#Define a class representing the typing test
class Test
 
  #This method displays the 8-ball greeting message
  def display_greeting
  
    Console_Screen.cls  #Clear the display area
  
    #Display a welcome screen
    print "\t\t  Welcome to the Ruby Typing Challenge game!" +
    "\n\n\n\n\n\n\n\n\n\n\n\n\nPress Enter to " +
               "continue. \n\n: "
  
  Console_Screen.pause       #Pause the game

  end
 
  #Define a method to be used to present test instructions
  def display_instructions
    
    Console_Screen.cls       #Clear the display area
    puts "\t\t\tInstructions:\n\n"  #Display a heading

    #Display the game's instructions
    puts %Q{    This test consists of a series of 10 typing challenges. 
    The challenge sentences are presented one at a time. To respond 
    correctly, you must retype each sentence exactly as shown and press 
    the Enter key. 
    
    Your grade will be displayed at the end of the test.
    
    You will receive an A for 9 or 10 correctly typed sentences, a B for 8, 
    a C for 7, a D for 6, and an F for 5 or fewer.
    \n\n\n\n\n\n\n\n\n
    Press Enter to continue.\n\n}

    Console_Screen.pause       #Pause the game
    
  end
 
  #Define a method to be used to present typing challenges
  def present_test(challenge)
  
    result = "" 
    #Loop until the player enters something 
    until result != "" 
        Console_Screen.cls       #Clear the display area
        print challenge + "\n\n: "  #Display the challenge sentence
        result = STDIN.gets  #Collect the player's input
        result.chop!         #Remove the end of line marker
    end
    #Analyze the player input and see if it is correct
    if challenge == result then
    
      #Keep track of the number of correctly retyped challenge sentences
      $noRight += 1  
      Console_Screen.cls       #Clear the display area
      #Keep the player informed
      print "  Correct!\n\nPress Enter to continue." 
      Console_Screen.pause       #Pause the game
      
    else  
    
      Console_Screen.cls       #Clear the display area
      #Keep the player informed
      print "  Challenge: " + challenge + "\n" +
            "  You typed: " +result + "\n\n"
      print "  Incorrect!\n\nPress Enter to continue."
      
      Console_Screen.pause       #Clear the game
      
    end
    
  end

  #Define a method to be used to display test results
  def determine_grade
  
    Console_Screen.cls       #Clear the display area 
    
    #Rather than using a pass/fail grading system, modify the game to assign grades of A, B, C, D, and F to the player using a 10-point grading scale.
    
    case $noRight
        when ($noRight.between?(9,10))
            print "  You retyped " + $noRight.to_s + " sentence(s) correctly. "
            puts "  You Got an A for the test!\n\nPress Enter to continue."
        when (8)
            print "  You retyped " + $noRight.to_s + " sentence(s) correctly. "
            puts "  You Got an B for the test!\n\nPress Enter to continue."
        when (7)
            print "  You retyped " + $noRight.to_s + " sentence(s) correctly. "
            puts "  You Got an C for the test!\n\nPress Enter to continue."
        when (6)
            print "  You retyped " + $noRight.to_s + " sentence(s) correctly. "
            puts "  You Got an D for the test!\n\nPress Enter to continue."
        else
            print "  You retyped " + $noRight.to_s + " sentence(s) correctly. "
            puts "  You Got an F for the test!\n\nPress Enter to continue."
    end
    #To pass the test the player must correctly retype 6 sentences
    #if $noRight >= 6 then
    
      #Inform the player of the good news
      #print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
      #puts "You have passed the typing test!\n\nPress Enter to continue."
      
    #else  #The player has failed the test
    
      #Inform the player of the bad news
      #print "You retyped " + $noRight.to_s + " sentence(s) correctly. "
      #puts "You have failed the typing test!\n\nPress Enter to continue."
      
    #end
    
  end

end


# Main Script Logic -------------------------------------------------------

#Initialize global variable that will be used to keep track of the number
#of correctly retyped sentences
$noRight = 0

Console_Screen = Screen.new  #Instantiate a new Screen object
Typing_Test = Test.new        #Instantiate a new Test object

#Execute the Test object's display_greeting method
Typing_Test.display_greeting

#Execute the Screen object's cls method in order to clear the screen
Console_Screen.cls

#Prompt the player for permission to begin the test
print "Would you like to test your typing skills? (y/n)\n\n: "

answer = STDIN.gets  #Collect the player's response
answer.chop!  #Remove any extra characters appended to the string
  
#Loop until the player enters y or n and do not accept any other input.
until answer == "y" || answer == "n"

  Console_Screen.cls  #Clear the display area

  #Prompt the player for permission to begin the test
  print "Would you like to test your typing skills? (y/n)\n\n: "

  answer = STDIN.gets  #Collect the player's response
  answer.chop!  #Remove any extra characters appended to the string

end 

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Okay, perhaps another time.\n\n"

else  #The player wants to take the test

  #Execute the Test object's display_instructions method
  Typing_Test.display_instructions
  
  #Display typing challenges and grade each answer by calling on the
  #Test object's present_test method
  Typing_Test.present_test "In the end there can be only one."
  Typing_Test.present_test "Once a great plague swept across the land."
  Typing_Test.present_test "Welcome to Ruby Principles of Ruby Programming"
  Typing_Test.present_test "There are very few problems in the world " +
  "that enough M&Ms cannot fix."
  Typing_Test.present_test "Perhaps today is a good day to die. Fight " +
  "beside me and let us die together."
  Typing_Test.present_test "In the end there can be two."
  Typing_Test.present_test "Once a great plane flew across the land."
  Typing_Test.present_test "Welcome to Hello World"
  Typing_Test.present_test "There are many problems in the world " +
  "that enough M&Ms can fix."
  Typing_Test.present_test "Perhaps today is a good day to live. Fight " +
  "beside me and let us live together."

  #Notify the player of the results by executing the Test object's 
  #display_instructions method
  Typing_Test.determine_grade

  Console_Screen.pause       #Pause the game
  
  Console_Screen.cls  #Clear the display area
  #Thank the player for taking the typing test
  puts "Thank you for taking the Ruby Typing Challenge.\n\n"

end


