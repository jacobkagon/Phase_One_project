class Boss < ActiveRecord::Base

    has_many :plans
    #has_many :henchmen

    def self.list_boss_names
       puts "1. #{Boss.first.name}, #{Boss.first.title}"
       puts "2. #{Boss.second.name}, #{Boss.second.title}"
    end
    
    
    def create_plan(plan)
        Plan.find_or_create_by(boss_id: self.id, job: plan)
        #binding.pry
    end

    def get_first_plan
        self.plans.first
    end

    def plan_count
        self.plans.count
    end



    
    

end