class DropPosts < ActiveRecord::Migration
  def up
  	drop_table :posts
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  	
  end
end
