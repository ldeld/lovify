class AddLoginCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :login_count, :integer, default: 0
  end
end
