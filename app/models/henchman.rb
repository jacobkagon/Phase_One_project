class Henchman < ActiveRecord::Base

    has_many :plan_henchmen
    has_many :plans, through: :plan_henchmen

    def henchmen_jobs
        self.plans
    end

    def job_count
        self.plans.count
    end

    

    def self.all_henchmen
        henchmen.all.name
    end



end
