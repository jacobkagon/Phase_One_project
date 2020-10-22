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

    def self.boss_plans(boss)
        #lists bosses' plans
      self.find_by(boss_id: boss).job
    end

    def self.list_all_plans
       puts "1. #{Plan.first.job}"
       puts "2. #{Plan.second.job}"
       puts "3. #{Plan.third.job}"
    end

    def self.includes_boss(name)
        #returns the bosses' plans
        Boss.all.select do |boss|
            boss.name == name
        end.map do |boss|
            boss.plans
        end
        
    end

end 