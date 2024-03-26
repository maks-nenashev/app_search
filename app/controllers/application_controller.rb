class ApplicationController < ActionController::Base
    include Pagy::Backend   #Podkluczenie "Pagy"
    include ErrorHandling # Podkluczenie ERORR 404

                          # gem "devase"
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
 #//////////////////////////////////////////////////////////////////////////////////////
      
end
