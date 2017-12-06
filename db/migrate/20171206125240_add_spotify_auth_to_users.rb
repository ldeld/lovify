class AddSpotifyAuthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :spotify_auth, :string
  end
end
