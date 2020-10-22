require_relative "../../config/environment.rb"
prompt = TTY::Prompt.new
require 'pry'

#we want to welcome the user to the evil plan generator
#we want to give them options to search for a villain
#we want to show a list of all villains
#once they've selected a villain, they have the option to view that villain's plans
#They can then see the henchmen associated with those plans
#they can have the option to create a new henchmen?

def begin_generator
    puts "Welcome to the Evil Plan Generator".red
    puts "Press 1 to search for a villain".blue
    puts "Press q to quit".green
end

def get_user_data
    begin_generator
   user_data = gets.chomp
   if user_data == '1' 
    choose_villain
   elsif user_data == 'q'
     puts "See you later.."
     exit
   else  
    puts "Sorry, please enter a valid command."
    begin_generator
    #binding.pry
   end
end



def choose_villain
    puts "Please enter the name of your villain:".blue
    puts "Or press 'b' to go back.".yellow
    Boss.list_boss_names
    $user_input = gets.chomp
    puts "Welcome #{$user_input}"
    puts ""
    choose_plans
end

def choose_plans
    puts "Thank you. Now choose your next evil scheme:"
    #boss = Boss.find_by(:name)
    boss_plans = Boss.boss_object($user_input)
    puts ""
    puts boss_plans.plans.pluck(:job)
    #shows the corresponding plans for that boss
   
    #prompt.select("Thank you. Now choose your next evil scheme:", choices)
   
   
    

  
end


def boss_name
    puts "enter name"
    Boss.list_boss_names
    $name = gets.chomp
    if Boss.includes_boss(name)
        list_boss_plans
    end
end

def list_boss_plans
   boss = $name
#    boss = Boss.boss_object(boss)
#     Plan.boss_plans(boss)
#     binding.pry
end


def choose_plan
    #allows the user to choose from a list of plans
    puts "Please choose an evil scheme to execute:"
    puts ""
    Plan.list_all_plans

end

def get_choose_plan
    #brings up the list of plans
    choose_plan
    input = gets.chomp
    if Plan.find_by(boss: dr_evil)
        new_job = Plan.find_by(boss: dr_evil)
    end
    puts "You have chosen option #{chosen_plan}"
end

def choose_henchman
    puts "Would you like to choose a henchman?"
    puts "yes or no?"
    choose_henchman = gets.chomp
    if choose_henchmen == 'yes'
        henchmen
    elsif choose_henchmen == 'no'
        #henchman who comes with job
    end
end

def henchmen 
    Henchman.list_all_henchmen
end



################################################

def run
get_user_data

end

run

