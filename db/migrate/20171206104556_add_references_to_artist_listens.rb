class AddReferencesToArtistListens < ActiveRecord::Migration[5.0]
  def change
    add_reference :artist_listens, :user, index: true
    add_reference :artist_listens, :artist, index: true
    add_column :artist_listens, :rank, :integer
  end
end
