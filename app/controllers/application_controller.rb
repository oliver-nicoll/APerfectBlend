class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentCart
  before_action :set_cart
  
  include ApplicationHelper
    
    private
        
    def redirect_if_not_logged_in
        redirect_to login_path if !logged_in?
    end
end
