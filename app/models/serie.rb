class Serie < ApplicationRecord
    has_and_belongs_to_many :lists
    has_many :comments
    has_many_attached :images
end
