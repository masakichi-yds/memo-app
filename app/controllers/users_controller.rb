class UsersController < ApplicationController

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(
      email: user_params[:email],
      password: user_params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to "/memos/index"
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @user = User.new
      render "users/login_form"
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to "/login"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      email: user_params[:email],
      password: user_params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to "/memos/index"
    else
      render "users/new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = user_params[:email]
    @user.password = user_params[:password]
    if @user.save
      flash[:notice] = "ユーザー情報を更新しました"
      redirect_to "/users/#{@user.id}"
    else
      render "users/edit"
    end
  end


  private

  def user_params
    params.require(:user).permit(:email,:password)
  end
end
