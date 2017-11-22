require "colorize"

while true

  puts "\n===== What is your word? ===== \nMake it 'exit' if you wish to leave".yellow
  @vanilla_word = gets
  @word = @vanilla_word.strip.downcase
  @word == "exit" ? exit() : "continue"

  @word_arr = (@word.split(%r{\s*}))

  def palindrome_check(num, fin)
    first_position = @word_arr[num]
    total_letters = @word_arr.length
    last_position = @word_arr[total_letters - fin]

    if first_position == last_position
      if num + 1 == total_letters
        puts "#@vanilla_word is a palindrome! Try another!".green
      else
        palindrome_check(num + 1, fin + 1)
      end
    else
      puts "#@vanilla_word is not a palindrome. Try again!".red
    end

  end

  palindrome_check(0, 1)

end