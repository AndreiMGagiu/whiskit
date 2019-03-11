class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.integer :portions
      t.string :type_of
      t.datetime :pick_up_start
      t.datetime :pick_up_end

      t.timestamps
    end
  end
end
