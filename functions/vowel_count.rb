while true

  puts "\nGive me a phrase, and I will count the number of vowels!\nType 'exit' to leave"
  user_input = gets.strip.downcase

  user_input == "exit" ? exit() : ""

  def vowel_check(num, length)
    vowel_count = 0
    while num < length
      case @input_arr[num]
        when "a", "e", "i", "o", "u"
          vowel_count += 1
          num += 1
        else
          num += 1
      end
    end
    puts "There are " + "#{vowel_count}" + " vowels"
  end

  @input_arr = user_input.split("").to_a

  vowel_check(0, @input_arr.count)

end