class PostsController < ApplicationController

	def index
		@name = "Krista"
	end

	def show
    @post= Post.find(params[:id])
	end

  def new
    @post = Post.new
  end


  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render action: 'new'
    end
  end

def edit 
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
    if @post.save
      redirect_to @post
    else
      render action: 'edit'
    end
end

# def delete 
# @post.find(params[:id]).destroy!
# end

end
# //creates params by gathering user info, makes hash
