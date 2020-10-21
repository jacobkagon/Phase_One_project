class Henchman < ActiveRecord::Base

    has_many :plan_henchmen
    has_many :plans, through: :plan_henchmen
end
