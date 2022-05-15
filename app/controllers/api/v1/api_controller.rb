module Api
  module V1
    class ApiController < ActionController::Base
      before_action :authenticate_user

      skip_before_action :verify_authenticity_token
      
      private
      
      def authenticate_user
        if request.headers['Authorization'].present?
          authenticate_or_request_with_http_token do |token, options|

            begin
              jwt_payload = JWT.decode(token, Rails.application.secrets.secret_key_base)

              @current_user_id = jwt_payload[0]['id']
            rescue JWT::ExpiredSignature              
              render template: "api/v1/layouts/errors", locals: { error: 'ExpiredSignature' }
            rescue JWT::VerificationError
              render template: "api/v1/layouts/errors", locals: { error: 'VerificationError' }
            rescue JWT::DecodeError
              render template: "api/v1/layouts/errors", locals: { error: 'DecodeError' }
            end

          end

        end

      end

      def authenticate_user!(options = {})
        head :unauthorized unless signed_in?
      end

      def current_user
        @current_user ||= super || User.find(@current_user_id)
      end

      def signed_in?
        @current_user_id.present?
      end

    end
  end
end

::Api::V1::ApiController
