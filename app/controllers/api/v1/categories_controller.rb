module Api
  module V1
    class CategoriesController < ApiController
      def index
        @categories = Category.all
      end
    end
  end
end

::Api::V1::CategoriesController
