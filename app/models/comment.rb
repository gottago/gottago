class Comment < ActiveRecord::Base
  belongs_to :bathroom
  attr_accessible :cleaniness, :comment, :commenter
end
