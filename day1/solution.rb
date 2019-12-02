file = 'input.txt'
input = []
File.readlines(file).each do |line|
  input << line.chomp.to_i
end
p input
result = input.reduce(0) do |sum, element|
  sum += (element/3).floor() - 2
end

p result
