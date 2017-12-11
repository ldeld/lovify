class RemoveInterestedInFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :interested_in_women, :boolean
    remove_column :users, :interested_in_men, :boolean
  end
end
