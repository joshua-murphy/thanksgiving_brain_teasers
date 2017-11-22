@arr = []

while true

  puts "\nEnter numbers one at a time, and I will tell the second highest and lowest!"
  puts "Enter an empty command to finish, or type 'exit' to leave"

  def find_min_max
    if @arr.count < 4
      puts "I need at least 4 numbers"
      get_input
    else
      delete_max
      @arr.delete_at(@arr.index(@arr.max))
      @arr.delete_at(@arr.index(@arr.min))
      highest = @arr.max
      lowest = @arr.min
      puts "The second highest number is: #{highest}"
      puts "The second lowest number is: #{lowest}"
      @arr = []
    end
  end

  def get_input

    user_input = gets.strip

    case user_input
      when "exit"
        exit()
      when ""
        find_min_max
      else
        case user_input.to_i
          when 0
            puts "Invalid input"
          else
            @arr.push(user_input.to_i)
            puts @arr.to_s       
            get_input     
        end
    end

  end

  get_input

end