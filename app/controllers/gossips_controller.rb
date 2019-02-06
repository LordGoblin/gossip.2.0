class GossipsController < ApplicationController

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    parasol = params["gossip"]
    if @gossip.update(title: parasol["title"], content: parasol["content"])
      redirect_to "/gossips/#{params["id"]}"
    else
      render :edit
    end
  end

  def destroy
    @desgoss = Gossip.find(params["id"])
    @desgoss.destroy
    redirect_to "/gossips"
  end

  def index
    @goss = Gossip.all
  end

  def show
    @goss = Gossip.find(params["id"])
  end

	def create
		@gossip = Gossip.new(user_id: rand(1..User.count), title: params["title"], content: params["body"]) # avec xxx qui sont les données obtenues à partir du formulaire
  		if @gossip.save
    	redirect_to "/gossips"
  		else
  		redirect_to "/gossips/new"
  		end
	end

end