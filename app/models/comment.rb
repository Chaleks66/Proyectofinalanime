class Comment < ApplicationRecord
  belongs_to :series, optional: true
  belongs_to :users
end
