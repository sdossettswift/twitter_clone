class PostController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.new
    @post.message = params[:post][:message]
    if @post.save
     redirect_to root_path, notice: "Gauzip Whispered!"
    else
     render :edit
   end
 end

  def new
    @post = Post.new
  end

  def update
    @post = Post.find_by id: params[:id]
    @post.message = params[:post][:message]
    if @post.save
     redirect_to root_path, notice: "Gauzip Updated!"
    else
     render :edit
    end
  end

  def edit
      @post = Post.find_by id: params[:id]
  end

  def delete
      @post = Post.find_by id: params[:id]
      @post.destroy
      redirect_to root_path, notice: "Gauzip deleted. History altered!"
  end

  def index
    @post = Post.all
  end

  def detail
    @post = Post.find_by id: params[:id]
  end
end
