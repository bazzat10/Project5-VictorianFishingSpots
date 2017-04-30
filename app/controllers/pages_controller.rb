class PagesController < ApplicationController
  def home
    # file = File.read('melbourne_fishing_spots.json')
    # @search = JSON.parse(file)
    #
    # @search.each do |place|
    #   location = Location.new
    #   location.name = place['Location']
    #   location.fish = place['Fish']
    #   location.latitude = place['Latitude']
    #   location.longitude = place['Longitude']
    #   location.save
    # end
    @search = Location.all
    render :home
  end

  def show
    @spot = Location.find(params[:id])
    render :show
  end

  def test

    render :js => "/home"
  end
end
