class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :create_filter

  private

  def create_filter
    @filter = Filter.new params || {}
  end
end
