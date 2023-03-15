# frozen_string_literal: true

Admin.new(email: "admin@example.com", password: "password", password_confirmation: "password").save
User.new(email: "user@example.com", password: "password", password_confirmation: "password").save
