class List < ApplicationRecord
  has_and_belongs_to_many :series
  belongs_to :users
end