class Rdv < ApplicationRecord
  belongs_to :match
  belongs_to :bar
end
