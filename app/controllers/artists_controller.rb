class ArtistsController < ApplicationController
  def self.update_artist_list(list)
    list.each do |artist|
      unless Artist.find_by(name: artist.name)
        Artist.create(name: artist.name, popularity: artist.popularity)
      end
    end
  end
end
