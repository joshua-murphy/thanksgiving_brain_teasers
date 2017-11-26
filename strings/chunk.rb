while true

  puts "\nGive me a phrase, and I will break it into chunks! \nType 'exit' to leave"
  user_input = gets.strip
    
  def get_letters(input)
    puts "\nHow many letters to chunk?"
    letters = gets.strip.to_i
    if letters == 0
      puts "Invalid input"
      get_letters(input)
    elsif letters >= input.length
      puts "That's too high! Your phrase only has #{input.length} letters!"
      get_letters(input)
    end
    make_chunks(letters, input)
  end

  def make_chunks(letters, input)
    puts ""
    base_num = 0
    num = letters - 1
    while num < input.length
      print "\"" + input[base_num..num].join("") + "\", "
      base_num += letters
      num += letters
    end 
    print "\"" + input[(num - letters + 1)..(input.length - 1)].join("") + "\"" + "\n"
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