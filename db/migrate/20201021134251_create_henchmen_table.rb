class CreateHenchmenTable < ActiveRecord::Migration[5.2]
  def change
    create_table :henchmen do |t|
      t.string :name
      t.string :specialty
    end
  end
end
