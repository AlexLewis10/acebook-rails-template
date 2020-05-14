class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in_user
  def logged_in_user
    @logged_in_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def redirect_null_user
    if logged_in_user.nil?
      redirect_to sessions_new_path
    end
  end

# linked to  the posts/show.html
helper_method :find_owner
  def find_owner(post)
    User.find(post.user_id).name
  end 

helper_method :find_id
  def find_id(post)
    post.user_id
  end 


end