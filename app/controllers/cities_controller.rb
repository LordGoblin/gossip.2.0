class CitiesController < ApplicationController

  def show

    @city = City.find(params["id"])
    @gossip = Gossip.where(user_id: (@use = User.where(city_id: params["id"])))

  end

end