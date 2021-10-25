class ReservationSerializer < ActiveModel::Serializer
    attributes :name, :category, :park, :start_date, :end_date, :user_id
  end