class Serie < ApplicationRecord
    has_and_belongs_to_many :lists
    has_many :comments, dependent: :destroy
    has_one_attached :images
end
