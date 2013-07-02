class PostsController < ApplicationController

	def index
		@name = "Krista"
	end

	def show
    @post= Post.find(params[:id])
	end
end