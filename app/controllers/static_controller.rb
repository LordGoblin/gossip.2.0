class StaticController < ApplicationController

def index_team
	puts "ok"*50
end

def index_contact
	puts "mdr"*50
end

def index_welcome
	@user_welcome = params["name"]
end

def index_accueil
	@goss = Gossip.all
end

def index_potin_post
	@goss = Gossip.find(params["gossbo"])
end

def index_user_post
	@use = User.find(params["usebo"])
	puts "***********************"
	puts @use.first_name
end

end