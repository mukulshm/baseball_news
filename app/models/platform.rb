class Platform < ActiveRecord::Base
  has_many :paths
  validates :name, :presence => true, :uniqueness => true
end
