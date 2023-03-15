# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  devise_for :users

  get "/", to: "home#landing_page", as: :landing_page
  authenticated :user do
    root "home#index"
  end
end
