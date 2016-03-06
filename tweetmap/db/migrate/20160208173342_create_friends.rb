class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :screen_name
      t.string :location
      t.float :latitude, precision: 10, scale: 6
      t.float :longitude, precision: 10, scale: 6
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
