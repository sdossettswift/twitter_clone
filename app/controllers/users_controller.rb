class UsersController < ApplicationController

  def index
    @users = User.where("id != ?", @current_user.id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      # we should also sign them in
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome!"
    else
      render :new
    end
  end

  def following
    @users = @current_user.following_users
  end

  def follow
    # do the thing
    user = User.find_by! id: params[:user_id]
    @current_user.follow(user)
    redirect_to users_path, notice: "✅"
  end

  def unfollow
    user = User.find_by! id: params[:user_id]
    @current_user.stop_following(user)
    redirect_to users_path, notice: "👻"
  end

  def profile
    @user = User.find_by! id: params[:user_id]
  end


  def timeline
    user_id = session[:user_id]
    if user_id.present?
      @current_user = User.find_by id: user_id
      if @current_user && @current_user.following_users.present?
        follower_ids = @current_user.following_users.pluck(:id)
        all_ids = follower_ids << @current_user.id
        @posts = Post.where(user_id: all_ids).order("created_at DESC")
      else
        @posts = Post.all.order("created_at desc")
      end
    else
      @posts = Post.all.order("created_at desc")
    end
end

end
