class ApplicationController < ActionController::Base
   #require 'themoviedb-api'
   #Tmdb::Api.key("24ae194a66e159e8302b86ee06e4b85c")
   #Tmdb::Api.language("ja")

   before_action :configure_permitted_parameters, if: :devise_controller?

  private

   def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
   end
end
