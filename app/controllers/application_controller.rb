class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location
  helper_method :current_order

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    return unless request.get? 
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath 
    end
  end

  def after_sign_in_path_for(resource)
      session[:previous_url] || root_path
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

 protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:User_name, :email, :password) }
     devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
     devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:current_password, :password, :name, :last_name, :document, :phonenumber1, :phonenumber2, :doc_type, :User_name) }
  end
end
