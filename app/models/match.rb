class Match < ApplicationRecord
  belongs_to :user_1, :class_name => "User"
  belongs_to :user_2, :class_name => "User"

  validates :user_1, presence: true
  validates :user_2, presence: true
  validates :score, presence: true
end
