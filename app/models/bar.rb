class Bar < ApplicationRecord
  has_many :bar_genres
  has_many :genres, through: :bar_genres
  validates :name, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

   def build_markers
    bars = [self]
    markers = Gmaps4rails.build_markers(bars) do |bar, marker|
      marker.lat bar.latitude
      marker.lng bar.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
    markers
  end
end
