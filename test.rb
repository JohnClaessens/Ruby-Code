puts RUBY_PLATFORM
$BJDir = ""
if RUBY_PLATFORM =~ /mingw/ || RUBY_PLATFORM =~ /mswin32/
    $BJDir = 'C:\Temp'
else
    $BJDIR = '/Temp'
end
$Log = 'C:\Temp\BJLog.txt'

outFile = File.new($Log, "a") 
    outFile.puts "New Score"
    outFile.puts "haha"
    outFile.puts "no worries"
    outFile.puts "--------------------------------------------------"
    outFile.close
puts $Log
puts $BJDir
 
    
    