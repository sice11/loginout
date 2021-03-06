class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      log_in @user
      redirect_to root_path
    else
      flash.now[:danger] = "メールアドレス、またはパスワードが異なります。"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

  # def log_out
  #   session[:user_id] = nil
  #   flash[:notice] = "ログアウトしました。"
  #   redirect_to root_path
  # end
end
