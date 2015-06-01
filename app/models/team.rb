class Team < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :paths
  belongs_to :logo
end
