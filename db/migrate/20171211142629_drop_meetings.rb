class DropMeetings < ActiveRecord::Migration[5.0]
  def change
    drop_table :meetings
  end
end
