# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  before_action :authenticate_user!

  # Index
  def index
    @posts = Post.includes(:user).all
  end
end
