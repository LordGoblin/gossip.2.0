class UsersController < ApplicationController

  def new
		
  end

  def create
	@user = User.new(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"], description: params["description"], age: rand(1..666), city_id: rand(1..City.count))
  	if @user.save
   	redirect_to "/gossips"
 	else
  	render :new
  	end
  end


  def show
    @use = User.find(params["id"])
    puts "************************"
    puts @use.first_name
  end

end