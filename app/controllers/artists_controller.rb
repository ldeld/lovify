class ArtistsController < ApplicationController
  def self.update_artist_list(list)
    list.each do |artist|
      unless Artist.find_by(spotify_id: artist.id)
        Artist.create(name: artist.name, popularity: artist.popularity, spotify_id: artist.id)
      end
    end
  end
end
