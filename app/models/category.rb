class Category < ApplicationRecord
    has_many :albums # está contida em muitos albums
    validates :name, presence: true

    has_one_attached :image

    def artists
        # esse metodo retornará artistas da categoria
        Artist.joins(:albums).where(albums: { id: self.albums.ids }).distinct
    end

    def songs
        # esse metodo retornará as músicas da categoria
        Song.joins(:album).where(songs: { id: self.albums.ids }).distinct
    end
end
