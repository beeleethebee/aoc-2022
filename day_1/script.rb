input = File.read("./input.txt").split("\n\n")

input = input.map {|el| el.split("\n").map(&:to_i).sum }
p input.max(3).sum