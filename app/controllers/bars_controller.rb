class BarsController < ApplicationController
  before_action :find_bar


  private

  def find_bar
    @bar = [Bar.find(params[:id])]
    # binding.pry
  end
end
