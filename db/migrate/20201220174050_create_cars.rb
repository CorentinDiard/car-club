class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :year
      t.integer :seats
      t.string :transmission
      t.string :propulsion
      t.string :mileage
      t.string :engine
      t.integer :power
      t.integer :price_per_day
      t.string :body_style
      t.text :description
      t.string :type_name
      t.string :number_plate
      t.string :slug
      t.float :car_grade_given_by_users
      t.string :fuel_type
      t.string :country
      t.string :locality
      t.string :region
      t.string :postcode
      t.string :address

      t.timestamps
    end
  end
end
