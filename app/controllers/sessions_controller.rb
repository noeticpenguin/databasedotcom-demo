class SessionsController < ApplicationController

  def new
    redirect_to '/auth/salesforce'
  end

  def create
    auth                      = request.env["omniauth.auth"]
    session[:omniauthToken]   = auth[:credentials][:token]
    session[:omniauthUrl]     = auth[:credentials][:instance_url]
    session[:omniauthRefresh] = auth[:credentials][:refresh_token]
    user = User.where(:provider => auth['provider'], 
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    user.refresh_token = auth[:credentials][:refresh_token]
    user.save
    session[:user_id] = user.id

    user.add_role :admin if User.count == 1 # make the first user an admin
    if user.email.blank?
      redirect_to edit_user_path(user), :alert => "Please enter your email address."
    else
      redirect_to root_url, :notice => 'Signed in!'
    end

  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
