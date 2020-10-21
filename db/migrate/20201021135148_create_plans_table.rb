class CreatePlansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :boss_id
      t.text :job
    end
  end
end
