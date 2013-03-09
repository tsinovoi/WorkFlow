class ApplicationController < ActionController::Base
  protect_from_forgery

#to jump straight to user sign_in
# before_filter :authenticate_user!, :except => [:some_action_without_auth]
# Access Current User
def index
    @things = current_user.things
end

rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
  
end
