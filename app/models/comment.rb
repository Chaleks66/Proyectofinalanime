class Comment < ApplicationRecord
  belongs_to :serie
  belongs_to :user
end
