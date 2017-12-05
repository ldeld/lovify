class CreateListenInCommons < ActiveRecord::Migration[5.0]
  def change
    create_table :listen_in_commons do |t|
      t.references :listen_user_1
      t.references :listen_user_2
      t.references :match_id

      t.timestamps
    end
  end
end
