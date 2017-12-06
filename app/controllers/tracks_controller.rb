class TracksController < ApplicationController
  def self.update_track_list(list)
    list.each do |track|
      unless Track.find_by(spotify_id: track.id)
        Track.create(name: track.name, popularity: track.popularity, spotify_id: track.id)
      end
    end
  end
end
