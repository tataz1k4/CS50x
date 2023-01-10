puts 'Height of the pyramid: '
@height = gets.chomp.to_i

while @height.negative? || @height > 8
  puts 'Height of the pyramid: '
  @height = gets.chomp.to_i
end

def pyramid()
  rows = (1..@height).to_a

  rows.each do |row|
    blank_spaces = ' ' * (@height - row)

    puts "#{blank_spaces}#{'#' * row}  #{'#' * row}#{blank_spaces}"
  end
end

pyramid()
