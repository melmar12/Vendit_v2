class PostsController < ApplicationController
  before_action :find_post, only:  [:show, :edit, :update, :destroy]
  def index
  	@post = Post.all.order("created_at DESC")
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

  	if @post.save
  		redirect_to dashboard_index_path
      flash[:success] = 'new anouncement created'
  	else
  		render 'new'
      flash[:danger] = 'something went wrong, try again'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @post.update(post_params)
  		redirect_to dashboard_index_path
      flash[:success] = 'anouncement updated'
  	else
  		render 'edit'
  	end
  end

  def destroy
    @post.destroy
    redirect_to dashboard_index_path
    flash[:success] = 'anouncement deleted'
  end




  private

  def find_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
