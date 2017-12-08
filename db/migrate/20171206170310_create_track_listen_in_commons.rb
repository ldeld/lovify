class CreateTrackListenInCommons < ActiveRecord::Migration[5.0]
  def change
    create_table :track_listen_in_commons do |t|
      t.references :track_listen_user_1
      t.references :track_listen_user_2
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
