class ReservationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        reservations = Reservation.all 
        render json: reservations
    end

    def create 
        reservation = Reservation.create!(reservation_params)
        render json: reservation, status: :created
    end 

    private 

    def reservation_params 
        params.permit(:name, :category, :park, :start, :end, :user_id)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
