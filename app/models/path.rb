class Path < ActiveRecord::Base
  belongs_to :team
  belongs_to :platform
end
