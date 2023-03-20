# frozen_string_literal: true

#
# Test Job
#
class TestJob < ApplicationJob

  # Performs
  def perform
    p "Hello"
  end
end
