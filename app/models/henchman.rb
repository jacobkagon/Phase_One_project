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
       puts "1. #{henchmen.first.name}, {henchmen.first.specialty}"
       puts "2. #{henchmen.second.name}, {henchmen.second.specialty}"
       puts "3. #{henchmen.third.name}, {henchmen.third.specialty}"
    end

    def self



end
