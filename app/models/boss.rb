class Boss < ActiveRecord::Base

    has_many :plans

    def self.list_boss_names
        Boss.all.map do |boss|
            boss.name
        end
    end

   

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


    def self.boss_object(name)
        self.find_by(name: name)
    end

end