while true

  puts "\nGive me a phrase, and I will break it into chunks! \nType 'exit' to leave"
  user_input = gets.strip
    
  def get_words(input)
    puts "\nHow many words to chunk?"
    words = gets.strip.to_i
    if words == 0
      puts "Invalid input"
      get_words(input)
    elsif words > input.count
      puts "That's too high! Your phrase only has #{input.count} words!"
      get_words(input)
    end
    make_chunks(words, input)
  end

  def make_chunks(words, input)
    puts ""
    base_num = 0
    num = words - 1
    puts "\"" + input[base_num..num].join(" ") + "\""
  end

  case user_input
  when "exit"
    exit()
  when user_input.length < 2
    puts "Please choose a longer phrase"
  else
    input_arr = user_input.split(" ")
    get_words(input_arr)
  end

end