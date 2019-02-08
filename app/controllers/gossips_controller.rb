class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new, :edit]
  before_action :user_match, only: [:edit, :destroy]

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
    @com = @goss.comments
    @nombre = @goss.comments.count
    puts "*******************"
    puts @nombre
  end

	def create
		@gossip = Gossip.new(title: params["title"], content: params["body"]) # avec xxx qui sont les données obtenues à partir du formulaire
  	@gossip.user = current_user
    if @gossip.save
    	redirect_to "/gossips"
  	else
  		redirect_to "/gossips/new"
  	end
	end

  def authenticate_user
    unless current_user
      redirect_to "/sessions/new"
    end
  end

  def user_match
    @gossip = Gossip.find(params[:id])
    unless current_user.id == @gossip.user.id
      redirect_to "/sessions/new"
    end
  end

end