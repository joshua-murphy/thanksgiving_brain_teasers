while true

  puts "\nGive me a phrase, and I will alphabetize it!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  input_arr = user_input.split("").to_a
  puts "\n" + input_arr.sort_by(&:downcase).join().strip

end