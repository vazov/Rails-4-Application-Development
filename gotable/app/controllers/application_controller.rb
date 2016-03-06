class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!, :enable_tenant
  def enable_tenant
    @current_tenant ||= Tenant.new(current_user)
  end

  include Concerns::Url
  
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
end
