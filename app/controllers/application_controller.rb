class ApplicationController < ActionController::Base
  before_action :set_curent_user
  def set_curent_user
    if session[:user_id]
      # @user= User.find(session[:user_id])
      Current.user= User.find_by(id: session[:user_id])

    end
  end

  def require_user_logged_in

      # We do this                                                        if this statement is true
     redirect_to sign_in_path, notice: "you msut be signed in todo that" if Current.user.nil?
  end

end
