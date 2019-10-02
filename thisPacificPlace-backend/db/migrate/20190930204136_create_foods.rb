class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :city_id
      t.string :image_url

      t.timestamps
    end
  end
end
