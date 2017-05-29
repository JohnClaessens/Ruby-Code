# Place the array in a random order.  Floyd's alg.
def shuffle(arr)
    for n in 0...arr.size
        targ = n + rand(arr.size - n)
        arr[n], arr[targ] = arr[targ], arr[n] if n != targ
    end
end

# Make strange declarations.
def pairs(a, b)
    a << 'Creepy'
    shuffle[b]
    b.each { |x| shuffle(a); a.each { |y| print y, " ", x, ".\n" } }
end
first = ['Fast'. 'Special', 'Quiet']
pairs(first, ['camper', 'monkey', 'sounds'. 'airplane''])
print "\n", first.join(" "), "\n"
