file = 'input.txt'

input = []
File.readlines(file).each do |line|
  input << line.chomp.to_i
end

def module_fuel(remaining_fuel, sum)
  remaining_fuel = (remaining_fuel/3).floor() - 2
  if(remaining_fuel <= 0)
    return sum
  end
  sum += remaining_fuel
  return module_fuel(remaining_fuel, sum)
end

p module_fuel(76663, 0)
fuels = input.map { |element| module_fuel(element, 0)}
p fuels.reduce(:+)
