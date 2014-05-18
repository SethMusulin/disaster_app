class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :case_number
    end
  end
end
