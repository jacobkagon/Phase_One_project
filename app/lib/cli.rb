require_relative "../../config/environment.rb"
Prompt = TTY::Prompt.new

class Cli


#we want to welcome the user to the evil plan generator
#we want to give them options to search for a villain
#we want to show a list of all villains
#once they've selected a villain, they have the option to view that villain's plans
#They can then see the henchmen associated with those plans
#they can have the option to create a new henchmen?

def initialize
    @user_input = nil
end


def render_ascii_art
    File.readlines("ascii_art/welcome_art.txt") do |line|
    puts line
  end
end

# def render_ascii_art
#     puts '/giraffe_art.txt'
# end
# tying to emulate this method I found by googling  
# >>> 
# def render_ascii_art
#   File.readlines("filename.txt") do |line|
#     puts line
#   end
# end

def begin_generator
    puts " "
    puts " "
    puts " "
    puts "                                  Welcome to the Evil Plan Generator".red
    puts " "
    puts "                                  Press 1 to search for a villain".yellow
    puts " "
    puts " "
    puts "                                          -Press q to quit-"
end

def get_user_data
    #render_ascii_art
    begin_generator
   user_data = gets.chomp
   if user_data == '1' 
    choose_villain
   elsif user_data == 'q'
     puts "                               See you later..     ...       ..."
     exit
   else  
    puts "                          Sorry, please enter a valid command.".green
    begin_generator
    #binding.pry
   end
end



def choose_villain
    list_boss_names = Boss.list_boss_names
    puts " "
    puts " "
    puts " "
    @user_input = Prompt.select("Please select your villain:".red, list_boss_names)
    puts "Welcome #{@user_input}"
    if @user_input 
        choose_plans
    end
end

def choose_plans
    #shows the corresponding plans for that boss
    boss_plans = Boss.boss_object(@user_input)
    #puts "Thank you. Now choose your next evil scheme:"
    puts ""
    plans = boss_plans.plans.pluck(:job)
    @user_input = Prompt.select("Thank you. Now choose your next evil scheme", plans)
    if @user_input
      henchmen
    end
end

def henchmen
    puts "hi, I am your henchmen, at your service.".red
    choose_henchman
end



# def get_choose_plan
#     #brings up the list of plans
#     choose_plan
#     input = gets.chomp
#     if Plan.find_by(boss: dr_evil)
#         new_job = Plan.find_by(boss: dr_evil)
#     end
#     puts "You have chosen option #{chosen_plan}"
# end

def choose_henchman
    puts "Would you like to choose a henchman?".yellow
    puts "yes or no?"
#    @user_input = "yes"
    if @user_input == 'yes'
        #Henchman.list_henchmen_names >> if type yes causes an infinite 'y'
    elsif @user_input == 'no'
        hench_plans = henchman_plans.plans.pluck(:henchman_id)
        #henchman who comes with job
    end
end

# def run
#     get_user_data
# end


end



################################################



