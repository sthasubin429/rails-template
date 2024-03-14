# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  # redirect to the rails admin dashboard or root path
  def after_sign_in_path_for(resource)
    # Actual instance of model is sent while signing in through devise
    resource.instance_of?(Admin) ? rails_admin_path : home_path
  end

  # redirect to admin sign up page or client sign up page
  def after_sign_out_path_for(resource)
    # Only symbol of model is sent while performing sign out action through devise
    resource == :admin ? new_admin_session_path : new_user_session_path
  end
end
