require "pry"

while true

  puts "\nGive me a phrase, and I will swap its case!\nType 'exit' to leave"
  user_input = gets.strip

  user_input == "exit" ? exit() : ""

  @input_arr = user_input.split("").to_a

  def swap_case(num, length)
    while num < length
      if @input_arr[num].capitalize == @input_arr[num]
        @input_arr[num].downcase!
      else
        @input_arr[num].capitalize!
      end
      num += 1
    end
  end

  swap_case(0, @input_arr.count)
  puts @input_arr.join("")

end