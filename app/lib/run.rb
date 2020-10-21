def get_user_data
    begin_generator
   user_data = gets.chomp
   if user_data == '1' 
    villain_name
   elsif user_data == 'q'
     puts "See you later.."
     exit
   else  
    puts "Sorry, please enter a valid command."
    begin_generator
    binding.pry
   end
end


def villain_name
    choose_villain
    user_input = gets.chomp
    if Boss.find_by(name: user_input)
        user = Boss.find_by(name: user_input)
        puts "Welcome #{user}"
    end
end

def run
    puts "hi"
end





