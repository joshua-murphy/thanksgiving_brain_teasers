while true
  
    puts "\nGive me a phrase, and I will split the words into an array! \nType 'exit' to leave"
    user_input = gets.strip
  
    user_input == "exit" ? exit() : ""  
  
    input_arr = user_input.split(" ")
    puts input_arr.to_a.to_s
  
  end