class CreateArtistListenInCommons < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_listen_in_commons do |t|
      t.references :artist_listen_user_1
      t.references :artist_listen_user_2
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
