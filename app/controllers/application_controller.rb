class ApplicationController < ActionController::Base
    include Pagy::Backend   #Podkluczenie "Pagy"
    include ErrorHandling # Podkluczenie ERORR 404
end
