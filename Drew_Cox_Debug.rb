words = ['true', 'false','unknown']
secret = words[rand(3)]

puts "I'm thinking of a word. Your options are true, false, and unknown."

print "Can you guess what I'm thinking of? "
while guess = STDIN.gets 
  guess.chop!
  if guess == secret
    puts "You win!"
    break #add the break
  else
    puts "Sorry, you lose."
  end
  print "Why dont you guess again? "
end
puts "The word was " +  secret + "." # used the plus to concatenate and removed the commas