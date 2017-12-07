class AddHideToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :hide, :boolean
  end
end
