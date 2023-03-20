# frozen_string_literal: true

# Home Controller
class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  # index
  def index; end

  # landing page
  def landing_page; end
end
