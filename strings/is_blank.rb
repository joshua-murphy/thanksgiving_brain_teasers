def is_string(check)
  check.length == 0 ? (puts "Input is blank\n ") : (puts "Input is not blank\n ")
end

input = rand(1..4)
case input
  when 1
    input = "'This is a string'"
  when 2
    input = ""
  when 3
    input = [0, "array", 14, false]
  when 4
    input = 42
end

puts "\nInput = #{input.to_s}"
is_string(input.to_s)