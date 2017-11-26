while true

  puts "\nGive me a phrase, and I will capitalize it!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : user_input.upcase!

  puts "\n" + user_input

end