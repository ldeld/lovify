class TrackListensController < ApplicationController
  def self.create_track_listens(list, user_id)
    list.each_with_index do |track, index|
      saved_track = Track.find_by(spotify_id: track.id)
      TrackListen.create(track: saved_track, user_id: user_id, rank: index + 1)
    end
  end
end
