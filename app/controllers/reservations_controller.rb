class ReservationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        reservations = Reservation.all.order("start ASC") 
        render json: reservations
    end

    def create 
        reservation = Reservation.create!(reservation_params)
        render json: reservation, status: :created
    end 

    def destroy 
        reservation = find_reservation
        reservation.destroy
        head :no_content
    end 

    private 

    def reservation_params 
        params.permit(:title, :category, :start, :end, :user_id)
    end

    def find_reservation
        Reservation.find(params[:id])
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
