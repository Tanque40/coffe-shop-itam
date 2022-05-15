module Api
  module V1
    class FoodsController < ApiController

      def index
        @foods = current_user.feed.paginate(page: params[:page])
      end

      def byCategory
        @foods = Food.where("category_id = #{params[:id]}")
      end

    end
  end
end

::Api::V1::FoodsController
