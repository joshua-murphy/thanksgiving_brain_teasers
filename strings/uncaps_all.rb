while true

  puts "\nGive me a phrase, and I will uncapitalize the first letter!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  @input_arr = user_input.split(" ").to_a
  @input_arr.downcase!

  puts "\n" + @input_arr.join(" ")

end