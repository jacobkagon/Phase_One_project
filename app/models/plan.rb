class Plan  < ActiveRecord::Base

    has_many :plan_henchmen
    has_many :henchmen, through: :plan_henchmen
    belongs_to :boss

    
    def self.list_bosses_plans
        #lists the plans that coreespond to the proper boss
        Boss.all.select do |bosses|
            bosses.plans == self
        end
    end

    def self.dr_evil_plan
        if Plan.boss == dr_evil
            dr_evil.plans.job
        end
    end

    def self.darth_vader_plans
        if Plan.biss == darth_vader
            darth_vader.plans.jpb
        end
    end

    
    
    
    def self.list_all_plans
       puts "1. #{Plan.first.job}"
       puts "2. #{Plan.second.job}"
       puts "3. #{Plan.third.job}"
    end

end 