class Meeting < ApplicationRecord
  belongs_to :match
  belongs_to :place
end
