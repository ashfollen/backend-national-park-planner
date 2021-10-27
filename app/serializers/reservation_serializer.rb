class ReservationSerializer < ActiveModel::Serializer
    attributes :title, :category, :park, :start, :end, :user_id, :id
  end