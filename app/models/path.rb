class Path < ActiveRecord::Base
  belongs_to :team
  belongs_to :platform
  validates :path, :presence => true
  validates :platform_id, :presence => true
  validates :team_id, :presence => true
end
