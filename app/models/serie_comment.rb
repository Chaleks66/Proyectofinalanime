class SerieComment < ApplicationRecord
  belongs_to :serie, optional: true
  belongs_to :user
end
