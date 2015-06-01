class Logo < ActiveRecord::Base
  belongs_to :team
  belongs_to :platform
  validates :path, :presence => true
  validates :team_id, :presence => true, :uniqueness => true
end
