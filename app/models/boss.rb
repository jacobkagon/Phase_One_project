class Boss < ActiveRecord::Base

    has_many :plans
    #has_many :henchmen

    def self.list_boss_names
       puts "1. #{Boss.first.name}"
       puts "#{Boss.first.title}"
       puts " "
       puts "2. #{Boss.second.name}"
       puts "#{Boss.second.title}"
       puts ""
       puts "3. #{Boss.third.name}"
       puts "#{Boss.third.title}"
       puts ""
       puts "4. #{Boss.fourth.name}"
       puts "#{Boss.fourth.title}"
    end

    # def self.includes_boss(name)
    #     #returns the bosses' plans
    #     self.all.select do |boss|
    #         boss.name == name
    #     end.map do |boss|
    #         boss.plans
    #     end
    # end

    def find_boss(boss)
        if self.name == name
        end
    end
    
    
    def create_plan(plan)
        Plan.find_or_create_by(boss_id: self.id, job: plan)
        #binding.pry
    end

    def get_first_plan
        self.plans.first
    end

    # def plan_count
    #     self.plans.count
    # end

    #create a method that will take in a string and return that obect

    def self.boss_object(name)
        self.find_by(name: name)
    end

end