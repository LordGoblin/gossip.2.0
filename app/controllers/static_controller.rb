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
	puts "lol"*50
end

end