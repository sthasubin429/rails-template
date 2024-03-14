# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  before_action :authenticate_user!

  # Index
  def index
    @posts = Post.includes(:user).all
  end

  # New
  def new
    @post = Post.new
  end

  # Create
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to :posts
    else
      render :new
    end
  end

  private

  # post params
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
