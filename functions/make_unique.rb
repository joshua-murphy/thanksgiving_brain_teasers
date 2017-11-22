while true
  
  puts "\nGive me a phrase, and I will remove duplicate characters!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  input_arr = user_input.split("").to_a
  puts "\n" + input_arr.uniq!.join().strip

end