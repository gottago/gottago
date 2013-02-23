class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.string :building
      t.integer :floor
      t.boolean :gender
      t.integer :cleanliness
      t.text :notes

      t.timestamps
    end
  end
end
