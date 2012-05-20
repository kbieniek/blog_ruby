class UserController < ApplicationController
  before_filter :login_required, :except => :my_account

  def login
    @user = User.new
    @user.username = params[:username]
  end

  def process_login
    if user = User.authenticate(params[:user])
      session[:id] = user.id # Remember the user's id during this session
      redirect_to session[:return_to] || '/home/index'
    else
      flash[:error] = 'Invalid login.'
      redirect_to '/user/login'#:action => 'login', :username => params[[:user][:username]]
    end
  end

  def logout
    reset_session
    flash[:message] = 'Logged out.'
    redirect_to :action => 'login'
  end

  def my_account
  end
end
