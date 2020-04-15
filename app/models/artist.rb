class Artist < ApplicationRecord
    has_many  :albums # tem muitos albums

    validates :name, presence: true
    has_one_attached :photo
end
