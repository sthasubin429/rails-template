# frozen_string_literal: true

# Home Controller
class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  # index
  def index
    p "============================"
    p PAGINATE_PER
    p "============================"
  end

  # landing page
  def landing_page; end
end
