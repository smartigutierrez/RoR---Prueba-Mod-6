class HomeController < ApplicationController
  def index
    @posts = Post.all
    @user = current_user if user_signed_in?
  end
end
