class Rdv < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :match
  belongs_to :bar
  has_one :conversation, dependent: :destroy

  validates :match, uniqueness: true
end
