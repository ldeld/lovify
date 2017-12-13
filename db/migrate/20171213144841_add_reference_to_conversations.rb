class AddReferenceToConversations < ActiveRecord::Migration[5.0]
  def change
    add_reference :conversations, :rdv, index: true
  end
end
