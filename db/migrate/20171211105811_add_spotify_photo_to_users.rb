class AddSpotifyPhotoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :spotify_photo, :string
  end
end
