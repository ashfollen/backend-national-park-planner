class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :category
      t.string :park
      t.date :start
      t.date :end
      t.integer :user_id
      t.timestamps
    end
  end
end
