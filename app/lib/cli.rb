require_relative "../../config/environment.rb"

#Name of Game #Evil_Plan_Generator

def render_ascii_art
    File.readlines("filename.txt") do |line|
      puts line
    end
  end

def begin_generator
    puts "Welcome to the Evil Plan Generator"
    puts "Press 1 to search for a villain"
    puts "Press q to quit"
end

def choose_villain
    puts "Please choose your villain"
    Boss.list_boss_names
end

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
        puts "Welcome #{user.name}"
    end
end


def choose_plan
    puts "Please choose an evil scheme to execute:"
    puts ""
    Plan.list_all_plans
end

def get_choose_plan
    choose_plan
    chosen_plan = gets.chomp
    puts "You have chosen #{chosen_plan}"
end

def choose_henchman
    puts "Would you like to choose a henchman?"
    puts "yes or no?"
    choose_henchman = gets.chomp
    if choose_henchmen = 'yes'
        henchmen
    elsif choose_henchmen = 'no'
        #henchman who comes with job
    end
end

def henchmen 
    Henchman.list_all_henchmen
end



################################################

def run
    #render_ascii_art
    
    #begin_generator
    get_user_data
    get_choose_plan
    choose_henchmen
    #choose_villain
    #choose_plan
end

run

