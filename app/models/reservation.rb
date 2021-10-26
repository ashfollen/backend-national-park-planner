class Reservation < ApplicationRecord
    belongs_to :user, optional: true
end
