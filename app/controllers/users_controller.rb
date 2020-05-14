class UsersController < ApplicationController
  def new
  end

  def create
    User.create(user_params)
    redirect_to posts_path
  end

  def show
    @posts = logged_in_user.posts # change this now  
    # we want  it to show the id of what is  in  the routes post 
    # @posts  = another user(which equal the id of what is in the routes) or the logged_in_user.posts
   #@posts  = find_owner(@post).post
  end 



  private

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end