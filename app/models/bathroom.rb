class Bathroom < ActiveRecord::Base
  attr_accessible :building, :cleanliness, :floor, :gender, :notes

  validates :building, :presence => true
  validates :cleanliness, :presence => true, :numericality =>
												{
													:only_integer => true,
													:greater_than => 0,
													:less_than => 4
												}
  validates :floor, :presence => true, :numericality =>
											{
												:only_integer => true,
												:greater_than => 0,
											}
end
