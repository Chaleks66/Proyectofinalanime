class Score < ApplicationRecord
  belongs_to :users
  belongs_to :series
end
