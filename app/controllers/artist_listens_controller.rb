class ArtistListensController < ApplicationController
  def self.create_artist_listens(list, user_id)
    list.each_with_index do |artist, index|
      saved_artist = Artist.find_by(spotify_id: artist.id)
      ArtistListen.create(artist: saved_artist, user_id: user_id, rank: index + 1)
    end
  end
end
