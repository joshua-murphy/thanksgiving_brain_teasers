while true

  puts "\nGive me a number, and I will humanize it!\nType '0' to leave"

  def find_last(input)
    last_digit = input.to_s.split("").last  
    case input
      when 11
        puts "11th"
      when 12
        puts "12th"
      when 13
        puts "13th"
      else
        case last_digit.to_i
          when 1
            puts input.to_s + "st"
          when 2
            puts input.to_s + "nd"
          when 3
            puts input.to_s + "rd"
          when 0, 4..9
            puts input.to_s + "th"
          else
            puts "Please don't show this"
        end
    end
  end

  user_input = gets.strip
  user_input == "0" ? exit() : user_input = user_input.to_i
  user_input == 0 ? ( puts "Invalid input" ) : find_last(user_input)

end