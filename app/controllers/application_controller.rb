class ApplicationController < ActionController::Base
  berore_action :authenticate_user!
  before_action :configre_permitted_parameters, if: :devise_controller?

    protected
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
