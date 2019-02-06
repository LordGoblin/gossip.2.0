class UsersController < ApplicationController

  def show
    @use = User.find(params["id"])
    puts "************************"
    puts @use.first_name
  end

end