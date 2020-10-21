class Plan  < ActiveRecord::Base

    has_many :plan_henchmen
    has_many :henchmen, through: :plan_henchmen
    belongs_to :boss

    def self.list_all_plans
       puts "1. #{Plan.first.job}"
       puts "2. #{Plan.second.job}"
       puts "3. #{Plan.third.job}"
    end

end 