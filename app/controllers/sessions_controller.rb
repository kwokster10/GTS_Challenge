require 'digest'

class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]

  # creating a session
  def create
    user = User.find_by(username: params[:session][:username])
    password_digest = Digest::MD5.hexdigest(params[:session][:password])
    if user && user.password == password_digest
      session[:user_id] = user.idusers
      session[:username] = user.username
      redirect_to engines_path
    else
      @username = params[:session][:username]
      @error = "Unknown username or password. Please try again."
      render :new
    end
  end

  # rendering new session form
  def new
  end

 	# destroying session
  def destroy
    reset_session
    redirect_to new_session_path
  end
end