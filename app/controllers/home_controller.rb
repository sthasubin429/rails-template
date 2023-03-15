class HomeController < ApplicationController
  before_action :authenticate_client!, only: [:index]

  def index; end
  def landing_page; end
end
