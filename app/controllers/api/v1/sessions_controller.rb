module Api
  module V1
    class SessionsController < Devise::SessionsController
  
      def create
        user = User.find_by_email(sign_in_params[:email])

        if user && user.validpassword?(sign_in_params[:password])
          @current_user = user
        else
          render json: {
            erros: {
              "email or password" => ['is invalid']
            }
          }, status: :unprocessable_entity
        end
      end

    end
  end
end

::Api::V1::SessionsController
