module API
  module V1
    class LocationController < ApplicationController
      def create
        @pickup = Pickup.new(pickup_attributes)

        if @pickup.save
          render json: @pickup, status: :created
        else
          render json: @pickup.errors.to_json, status: :unprocessable_entity
        end
      end

      private

      def pickup_attributes 
        params.require(:location).permit(id:,:lat,:lng,:day,:sign,:client_fullname,:client_phone,:client_email,:event_datetime)
      end
    end
  end
end