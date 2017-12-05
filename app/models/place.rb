class Place < ApplicationRecord
  validates :name, presence:true
  validates :address, presence:true
  validates :genre, presence:true
end
