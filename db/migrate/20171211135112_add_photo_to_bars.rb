class AddPhotoToBars < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :photo, :string
  end
end
