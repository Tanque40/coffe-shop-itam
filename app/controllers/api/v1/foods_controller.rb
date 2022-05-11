module Api
  module V1
    class FoodsController < ApiController
      def index
        @foods = current_user.feed.paginate(page: params[:page])
        sign_out current_user
      end
    end
  end
end
