module Api
  module V1
    class RoutesController < ApplicationController
      def get
        @route = Route.find_by(id: params[:id])
        if @route
          render json: @route, status: :ok
        else
          render json: {}, status: :not_found
        end
      end
    end
  end
end