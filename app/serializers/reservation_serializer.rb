class ReservationSerializer < ActiveModel::Serializer
    attributes :name, :category, :park, :start, :end, :user_id
  end