while true

  puts "\nGive me a phrase, and I will search for a specific word!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  def get_word(input)
    puts "\nSearch for what word?"
    word = gets.strip
    if word == 0
      puts "Invalid input"
      search(input)
    end
    search(word, input)
  end

  def search(word, input)
    num = 0
    num_count = 0
    while num < input.count
      if input[num] == word
        num_count += 1
        num += 1
      else
        num += 1
      end
    end
    if num_count == 1
      puts "\n #{word.capitalize} occurs #{num_count} time"
    else
      puts "\n #{word.capitalize} occurs #{num_count} times"
    end
  end

  input_arr = user_input.downcase.split(" ").to_a
  get_word(input_arr)

end