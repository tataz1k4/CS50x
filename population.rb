puts "What's the initial population?"
initial_pop = gets.chomp.to_i

while initial_pop < 9
  puts "What's the initial population?"
  initial_pop = gets.chomp.to_i
end

puts "What's the ending population?"
ending_pop = gets.chomp.to_i

while ending_pop < initial_pop
  puts "What's the ending population?"
  ending_pop = gets.chomp.to_i
end

years = 0

while initial_pop < ending_pop
  initial_pop = initial_pop + (initial_pop/3) - (initial_pop/4)
  years += 1
end

puts "It will take #{years} years to reach that population size"
