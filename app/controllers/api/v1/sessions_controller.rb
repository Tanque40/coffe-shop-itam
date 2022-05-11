module Api
  module V1
    class SessionsController < Devise::SessionsController
  
      skip_before_action :verify_authenticity_token
      def create
        user = User.find_by email: params[:email].downcase
        puts user

        if user && user.valid_password?(params[:password])
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
