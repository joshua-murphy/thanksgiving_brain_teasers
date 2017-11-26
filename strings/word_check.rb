while true

  puts "\nGive me a phrase, and I will check if it is with a specific word!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : (puts "\nWhich word to check?")
  
  word = gets.strip
  input_arr = user_input.split(" ").to_a

  input_arr[input_arr.count - 1].downcase == word.downcase ? (puts "\nTrue") : (puts "\nFalse")

end