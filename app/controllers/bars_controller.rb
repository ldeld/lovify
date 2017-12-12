class BarsController < ApplicationController
  before_action :find_bar

  def show
  end

  private

  def find_bar
    @bar = Bar.find(params[:id])
  end
end
