def is_string(check)
  if check.is_a? String
    puts "Input is a string\n "
  else
    puts "Input is not a string\n "
  end
end

input = rand(1..4)
case input
  when 1
    input = "'This is a string'"
  when 2
    input = true
  when 3
    input = [0, "array", 14, false]
  when 4
    input = 42
end

puts "\nInput = #{input.to_s}"
is_string(input)