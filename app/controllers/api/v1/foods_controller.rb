module Api
  module V1
    class FoodsController < ApiController
      def index
        @foods = current_user.feed.paginate(page: params[:page])
      end
    end
  end
end
