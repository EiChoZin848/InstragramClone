class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show]
  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to root_path, :notice => "The image has been uploaded."
    else
      redirect_to root_path, :notice =>"Image can't be blank"
    end
    
  end

  def new
    @post = Post.new
  end

  def show
    
    @post = Post.find(params[:id])
    
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to current_user, :notice => 'Your post was successfully deleted.'
    end
  end

end
