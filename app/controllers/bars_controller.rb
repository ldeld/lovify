class BarsController < ApplicationController
  before_action :find_bar

  def show
    @markers = Gmaps4rails.build_markers(@bar) do |bar, marker|
      marker.lat bar.latitude
      marker.lng bar.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  private

  def find_bar
    @bar = [Bar.find(params[:id])]
    # binding.pry
  end
end
