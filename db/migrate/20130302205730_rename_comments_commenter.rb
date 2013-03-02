class RenameCommentsCommenter < ActiveRecord::Migration
  def change
  	rename_column :comments, :commentor, :commenter
  end
end
