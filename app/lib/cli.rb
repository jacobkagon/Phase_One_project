require_relative "../../config/environment.rb"
Prompt = TTY::Prompt.new
require 'pry'

class Cli


#we want to welcome the user to the evil plan generator
#we want to give them options to search for a villain
#we want to show a list of all villains
#once they've selected a villain, they have the option to view that villain's plans
#They can then see the henchmen associategirt pd with those plans
#they can have the option to create a new henchmen?

#1.
def begin_generator
    puts "Welcome to the Evil Plan Generator\n".red
    puts "Press 1 to search for a villain".blue
    puts "Press q to quit\n".green
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
#2.
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
    puts "Sorry, please enter a valid command."
    puts "                          Sorry, please enter a valid command.".green
    begin_generator
    #binding.pry
   end
end

#**********************
#Not directly called in run (referenced in user_data)
def choose_villain
    #puts "Or press 'b' to go back\n.".yellow
    all_bosses = Boss.pluck(:name)
      #List of villains in db
    $user_type = Prompt.select("Please select a villain below:".blue, all_bosses)    
    boss = Boss.find_by(name: $user_type)
    boss.title
    puts "\n\nYou have chosen #{$user_type}, '#{boss.title}'\n".red
    #Villain name still shows up after selection, will try to find method to clear if possible
end

#**********************

def create_look_menu
   
    # choices = $user_type.plans.pluck(:job)
    #shows the corresponding plans for that boss
    user_input = Prompt.select("Would you like to create a new plan or look through their list of schemes?", %w(create look))
    
    
    if user_input == "create"
        boss = Boss.find_by(name: $user_type)
        boss.id
        puts "Type a brief description of their scheme\n\n"
        user_input = gets.chomp
        puts "#{$user_type}'s new scheme '#{user_input}' looks good!\n\n"
        new_plan = Plan.find_or_create_by(boss_id: boss.id, job: user_input)
    elsif user_input == "look"
    #pull boss name "string" from user input to then search for their plans in db
        boss = Boss.find_by(name: $user_type)
        plans = boss.plans.all
        choices = plans.pluck(:job)
        $user_plan= Prompt.select("Which plan would you like to view?\n\n".blue, choices)
        view_plan_details
    else
    end
end

def view_plan_details
    boss = Boss.find_by(name: $user_type)
    chosen_plan = Plan.find_by(job: $userplan)
    
    
    if chosen_plan.henchmen = nil
        "There are no henchmen assigned to this scheme"
        choices = %w(yes no)
        $user_plan = Prompt.select("Would you like to select a henchman to add?\n\n".blue, choices)
    elsif chosen_plan.henchmen != nil
        chosen_plan.henchmen
        $user_plan = Prompt.select("Here are the henchmen assigned to this scheme\n\n".blue, chosen_plan.henchmen)
    else
    end
end



# def boss_name
#     puts "enter name"
#     user_input = gets.chomp

#     boss = Boss.find_by(name: user_input)
#     # $name = gets.chomp
#     boss.plans.job
# end

# def list_boss_plans
#    boss = $name
# #    boss = Boss.boss_object(boss)
# #     Plan.boss_plans(boss)
# #     binding.pry
# end


# def choose_plan
#     #allows the user to choose from a list of plans
#     puts "Please choose an evil scheme to execute:"
#     puts ""
#     Plan.list_all_plans

# end

# def get_choose_plan
#     #brings up the list of plans
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
    puts "Would you like to choose a henchman to add to this plan?"
    puts "yes or no?"
    choose_henchman = gets.chomp
    if choose_henchmen == 'yes'
        henchmen
    elsif choose_henchmen == 'no'
        "Great! Thanks for stopping by!"
        begin_generator
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

def run
begin_generator
get_user_data
create_look_menu
view_plan_details

end


