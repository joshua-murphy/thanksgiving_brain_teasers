while true

  puts "\nGive me a phrase, and I will remove some letters! \nType 'exit' to leave"
  user_input = gets.strip.downcase
    
  def get_letters(input)
    puts "\nHow many letters to keep?"
    letters = gets.strip.to_i
    if letters == 0
      puts "Invalid input"
      get_letters(input)
    elsif letters >= input.length
      puts "That's too high! Your phrase only has #{input.length} letters!"
      get_letters(input)
    end
    remove_letters(letters, input)
  end

  def remove_letters(letters, input)
    num = 0
    new_arr = []
    while num < letters
      new_arr.push(input[num])
      num += 1
    end 
    puts "\nYour new phrase is: " + new_arr.join()
  end

  case user_input
  when "exit"
    exit()
  when user_input.length < 2
    puts "Please choose a longer phrase"
  else
    input_arr = user_input.split("")
    get_letters(input_arr)
  end

end