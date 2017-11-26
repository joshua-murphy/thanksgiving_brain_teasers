while true

  puts "\nGive me a phrase, and I will repeat it! \nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""  

  def repeat(input, count)
    input_arr = input.split(" ")
    puts "\n" + (input * count).capitalize
  end

  puts "How many times to repeat?"
  count = gets.strip.to_i
  count * user_input.length < 5000 ? repeat(user_input, count) : (puts "Please choose a smaller count")

end