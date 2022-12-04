input = File.read("./input.txt").split("\n")

# Part 1

# data = input.map do |line|
#   elf_one, elf_two = *line.split(",")
#   elf_one = elf_one.split("-").map(&:to_i)
#   elf_two = elf_two.split("-").map(&:to_i)
#
#   elf_one_range = (elf_one[0]..elf_one[1])
#   elf_two_range = (elf_two[0]..elf_two[1])
#   elf_two_range.cover?(elf_one_range) || elf_one_range.cover?(elf_two_range)
# end.tally
#
#
# pp data[true]


# Part 2

data = input.map do |line|
  elf_one, elf_two = *line.split(",")
  elf_one = elf_one.split("-").map(&:to_i)
  elf_two = elf_two.split("-").map(&:to_i)

  elf_one_range = (elf_one[0]..elf_one[1])
  elf_two_range = (elf_two[0]..elf_two[1])
  elf_two_range.map {|el| elf_one_range.include? el}.include? true
end.tally


pp data