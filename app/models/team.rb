class Team < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :paths
end
