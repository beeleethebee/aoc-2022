input = File.read("./input.txt").split("\n")

translation_elf = { 'A' => 'rock', 'B' => 'paper', 'C' => 'scissors' }
translation_human = { 'X' => 'rock', 'Y' => 'paper', 'Z' => 'scissors' }

win_combin = {
  %w[rock rock] => 3 + 1,
  %w[rock paper] => 6 + 2,
  %w[rock scissors] => 0 + 3,
  %w[paper rock] => 0 + 1,
  %w[paper paper] => 3 + 2,
  %w[paper scissors] => 6 + 3,
  %w[scissors rock] => 6 + 1,
  %w[scissors paper] => 0 + 2,
  %w[scissors scissors] => 3 + 3
}

# p win_combin


# Exercice one

data = input.map do |game|
  elf, me = game.split(' ')
  win_combin[[translation_elf[elf], translation_human[me]]]
end

# p data


# Exercice two

xyz_translation = {
  'X' => 0,
  'Y' => 3,
  'Z' => 6
}

data = input.map do |game|
  elf, me = game.split(' ')
  expected_score = xyz_translation[me]
  max_expected_score = expected_score + 3
  elf_played = translation_elf[elf]

  win_combin.select do |k,v|
    v > expected_score && v <= max_expected_score && k[0] == elf_played
  end.values[0]
end

p data.sum