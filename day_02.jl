s = open("data/day_02.txt") do file
    lines = map(x -> [split(x)[1],  parse(Int32, split(x)[2])], readlines(file))
    # Part 1
    pos_x, pos_y = 0, 0
    for (direction, val) in lines
        if direction == "forward"
            pos_x += val
        elseif direction == "up"
            pos_y -= val
        elseif direction == "down"
            pos_y += val
        else
            continue
        end
    end
    println(pos_x * pos_y)
    # Part 2
    pos_x, pos_y, aim = 0, 0, 0
    for (direction, val) in lines
        if direction == "forward"
            pos_x += val
            pos_y += aim * val
        elseif direction == "up"
            aim -= val
        elseif direction == "down"
            aim += val
        else
            continue
        end
    end
    println(pos_x * pos_y)
end