module Api
  module V1
    class OrdersController < ApiController
      
      def index
        @orders = Order.where("user_id = #{current_user.id}")
      end


    end
  end
end

::Api::V1::OrdersController
