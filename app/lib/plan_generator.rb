#Name of Game #Evil_Plan_Generator

def user
   get_user_data 
end


def begin_generator
    puts "Welcome to the Evil Plan Generator"
    puts "Press 1 to search for a villain"
    puts "Press q to quit"
end

def choose_villain
    puts "Please enter your name"
    puts "Press b to go back"
end

def choose_villain
    "Please choose your villain by entering the corresponding number."
    puts "1. #{Boss.first.name}"
    puts "2. #{Boss.second.name}"
    puts "3. #{Boss.third.name}"
    puts "4. #{Boss.fourth.name}"
end

def choose_plan
    "Please choose an evil scheme to execute"
    puts "1. Plan.first.name"
end

user


