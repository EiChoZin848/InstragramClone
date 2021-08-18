class HomeController < ApplicationController
  def index
    if current_user
      @posts = Post.all.paginate(:page => params[:page], :per_page => 5)
    else
      redirect_to new_user_session_path
    end
  end

end
