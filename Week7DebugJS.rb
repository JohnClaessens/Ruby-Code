class Box

   def initialize(w,h)
      @width, @height = w, h
   end
	
   def printWidth
      @width
   end

   def printHeight
      @height
    end #add the end here
end

box = Box.new(10, 20) # change the box.new to Box.new

x = box.printWidth()# added the . between box and printWidth
y = box.printHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

#https://www.tutorialspoint.com/ruby/ruby_object_oriented.htm