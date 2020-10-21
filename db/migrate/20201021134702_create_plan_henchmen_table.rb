class CreatePlanHenchmenTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plan_henchmen do |t|
      t.integer :plan_id
      t.integer :henchman_id
    end
  end
end
