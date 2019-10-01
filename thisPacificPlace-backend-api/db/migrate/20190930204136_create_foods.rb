class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :city_id
      t.integer :photo_id

      t.timestamps
    end
  end
end
