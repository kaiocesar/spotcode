class Category < ApplicationRecord
    has_many :albums # está contida em muitos albums
    validates :name, presence: true

    has_one_attached :image
end
