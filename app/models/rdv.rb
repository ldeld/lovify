class Rdv < ApplicationRecord
  belongs_to :match
  belongs_to :bar

  validates :match, uniqueness: true
end
