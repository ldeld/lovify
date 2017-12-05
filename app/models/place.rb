class Place < ApplicationRecord
  has_many :meetings

  validates :name, presence:true
  validates :address, presence:true
  validates :genre, presence:true
end
