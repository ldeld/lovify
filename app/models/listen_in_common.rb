class ListenInCommon < ApplicationRecord
  belongs_to :listen_user_1, :class_name => "Listening"
  belongs_to :listen_user_2, :class_name => "Listening"
  belongs_to :match_id

  validates :listen_user_1, presence: true
  validates :listen_user_2, presence: true
end
