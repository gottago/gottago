class Comment < ActiveRecord::Base
  belongs_to :bathroom
  attr_accessible :cleanliness, :comment, :commenter
end
