class Listening < ApplicationRecord
  belongs_to :user
  validates :type, presence: true
  validates :name, presence: true
  validates :ratio, presence: true
end
