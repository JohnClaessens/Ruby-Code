# save this as guess.rb
words = ['netflix', 'troll','cartoons']#added a comma between troll and cartoons
secret = words[rand(3)]

print "\nYour guess? "

while guess = STDIN.gets #added 's' to get
  guess.chop!
  if guess == secret
    puts "\nYou win!"
    break #add the 'r' to break
  else
    puts "\nSorry, you lose."
  end
  print "\nguess? "
end;
puts "\n\nThe word was " +  secret + "." # used the plus to concatenate and removed the commas