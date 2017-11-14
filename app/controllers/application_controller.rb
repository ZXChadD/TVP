class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[firstname lastname address tel_num experience description license_num avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :address, :tel_num, :experience, :description, :license_num, :avatar, :company, :industry, :experience_consulting, :daily, :previous, provider_attaches_attributes: %i[id image title provider_id]])
  end

end
