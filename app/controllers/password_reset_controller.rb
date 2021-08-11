class PasswordResetController < ApplicationController


  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?

      # send email
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice:"resert password"

  end

  def edit
    @user= User.find_signed(params[:token],purpose: "password_reset")
  end

  def update
    @user= User.find_signed(params[:token],purpose: "password_reset")

  end
end
