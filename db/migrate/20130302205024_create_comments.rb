class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentor
      t.integer :cleaniness
      t.text :comment
      t.references :bathroom

      t.timestamps
    end
    add_index :comments, :bathroom_id
  end
end
