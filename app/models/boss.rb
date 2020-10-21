class Boss < ActiveRecord::Base

    has_many :plans
    #has_many :henchmen

    def create_plan(plan)
        Plan.find_or_create_by(boss_id: self.id, job: plan)
        #binding.pry
    end




end