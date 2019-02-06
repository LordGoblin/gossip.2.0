class GossipsController < ApplicationController

	def new
	end

	def create
		@gossip = Gossip.new(user_id: rand(1..User.count), title: params["title"], content: params["body"]) # avec xxx qui sont les données obtenues à partir du formulaire
  		if @gossip.save # essaie de sauvegarder en base @gossip
    	# si ça marche, il redirige vers la page d'index du site
    	redirect_to "/accueil"
  		else
  		redirect_to "/gossips/new"
    	# sinon, il render la view new (qui est celle sur laquelle on est déjà)
  		end
	end

end