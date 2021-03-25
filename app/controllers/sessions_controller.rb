class SessionsController < ApplicationController
  
  # GET /login
  def new
    # x @session = Session.new
    # o scope: :session + url: login_path
  end
  
  
  # POST /login
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user &.authenticate(params[:session][:password])
      #success
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      #Failure
      # aleart-danger => 赤色のフラッシュ
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
      # ewdirect_to vs. render
      # GET /users/1 => show template
      #                 render 'new' (0回目)
    end
  end
  
  # DELETE /logout
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
