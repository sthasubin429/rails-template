# frozen_string_literal: true

Rails.application.routes.draw do
  require "sidekiq/web"
  require "sidekiq-scheduler/web"

  devise_for :admins, skip: [:registrations]
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  devise_for :users

  get "/", to: "home#landing_page", as: :landing_page
  get "home", to: "home#index"
  authenticated :user do
    root "home#index"
  end

  authenticated :admin do
    mount Sidekiq::Web => "/sidekiq"
  end
end
