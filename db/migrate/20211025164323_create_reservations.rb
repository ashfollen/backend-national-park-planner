class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :category
      t.string :park
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.timestamps
    end
  end
end
