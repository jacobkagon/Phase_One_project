class Plan  < ActiveRecord::Base

    has_many :plan_henchmen
    has_many :henchmen, through: :plan_henchmen
    belongs_to :boss

end 