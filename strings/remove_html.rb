#I could not get this working

while true


puts "\nEnter numbers one at a time, and I will tell the second highest and lowest!"
puts "Enter an empty command to finish, or type 'exit' to leave"

def find_tags(input, num)
  @open_arr = []
  @close_arr = []
  while num < input.length
    if input[num] == "<"
      @open_arr.push(num)
    end
    if input[num] == ">"
      @close_arr.push(num)
    end
    num += 1
    delete_between_tags(input, num)
  end
end

def delete_between_tags(input, num)
  if @open_arr != []
    puts @open_arr.to_s
  end
  if @close_arr != []
    puts @close_arr.to_s
    add_in_between(@open_arr[0], @close_arr[0], input)    
  end
end

def add_in_between(first, last, input)
  for i in first..last
    new_arr = []
    new_arr.push(i)
    input.delete_at(new_arr[i])
    puts input.to_s
  end
end

def get_input

  user_input = gets.strip

  case user_input
    when "exit"
      exit()
    else
      user_input = user_input.split("")
      find_tags(user_input, 0)
  end

end

get_input

end