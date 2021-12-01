function triple(array, pos) 
    array[pos-1], array[pos], array[pos+1]
end

s = open("data/day_01.txt") do file
    lines = map(x -> parse(Int32, x), readlines(file))
    num_increases = sum([1 for i in 2:length(lines) if lines[i] > lines[i-1]])
    println(num_increases)
    num_increases_triple = sum([1 for i in 3:length(lines)-1 if sum(triple(lines, i)) > sum(triple(lines, i-1))])
    println(num_increases_triple)
end