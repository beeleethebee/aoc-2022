input = File.read("./input.txt").split("\n")

# Part 1

# data = input.map do |line|
#   compartments = line.chars.each_slice(line.length / 2).to_a
#   letter = (compartments[0] & compartments[1])[0]
#   byte = letter.bytes[0]
#   if letter.upcase == letter
#     byte - 64 + 26
#   else
#     byte - 96
#   end
# end
#
# p data.sum



# Part 2

# input = %w[vJrwpWtwJgWrhcsFMMfFFhFp
# jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
# PmmdzqPrVvPwwTWBwg
# wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
# ttgJtRGJQctTZtZT
# CrZsJsPPZsGzwwsLwLmpwMDw]

data = input.each_slice(3).map do |lines|
  letter = (lines[0].chars & lines[1].chars & lines[2].chars)[0]
  letter
  byte = letter.bytes[0]
  if letter.upcase == letter
    byte - 64 + 26
  else
    byte - 96
  end
end

p data.sum