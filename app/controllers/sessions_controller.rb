class SessionsController < ApplicationController
  skip_before_filter :authenticate!

  def new; end

  def create
    load_user

    if @user && @user.authenticate(session_params[:password])
      log_in_user
      redirect_to root_url
      return
    end

    flash[:error] = t(".flash.invalid_credentials")
    render :new
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  private

  def load_user
    @user = User.find_by(email: session_params[:email])
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end

  def log_in_user
    reset_session
    session[:user_id] = @user.id
  end
end
