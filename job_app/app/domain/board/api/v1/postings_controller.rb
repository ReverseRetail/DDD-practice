module Board
  module Api
    module V1
      class PostingsController < ApiController
        include Operations::UseCases::Postings

        def index
          response = GetAll.new.call
          render json: { postings: response }, status: :ok, code: 200
        end

      end
    end
  end
end
