class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  check_authorization :unless => :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  private

    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end
end
