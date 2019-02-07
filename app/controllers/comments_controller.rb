class CommentsController < ApplicationController

	def destroy
		puts "********************"
		puts params
    	@descom = Comment.find(params["id"])
    	@descom.destroy
    	redirect_to "/gossips"
  	end

	def edit
    	@com = Comment.find(params[:id])
    	@goss = @com.gossip
  	end

  	def update
  		@com = Comment.find(params[:id])
  		parasol = params["comment"]
    	if @com.update(content: parasol["content"])
      		redirect_to "/gossips/#{params["gossip_id"]}"
    	else
      		render :edit
    	end
  	end

	def create
		@com = Comment.new(user_id: rand(1..User.count), gossip_id: params["gossip_id"], content: params["body"])
  		if @com.save
    	redirect_to "/gossips/#{params["gossip_id"]}"
  		else
  		render :new
  		end
	end

end