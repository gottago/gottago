class Bathroom < ActiveRecord::Base
  attr_accessible :building, :cleanliness, :floor, :gender, :notes

  has_many :comments, :dependent => :destroy

  validates_inclusion_of :gender, :in => [ "male", "female" ]
  
  validates :building, :presence => true

  validates :cleanliness, :presence => true,
						:numericality =>
						{
							:only_integer => true,
							:greater_than_or_equal_to => 1,
							:less_than_or_equal_to => 3
						}				

  validates :floor, :presence => true,
  					:numericality =>
  					{
							:only_integer => true,
							:greater_than => 0
						}
end
