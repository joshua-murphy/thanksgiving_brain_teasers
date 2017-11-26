while true

  puts "\nGive me a phrase, and I will check if an index is capital!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : (puts "\nWhich index to check?")
  
  num = gets.strip.to_i
  input_arr = user_input.split("").to_a
  puts input_arr[num] + "\n"

  input_arr[num].capitalize == input_arr[num] ? (puts "True") : (puts "False")

end