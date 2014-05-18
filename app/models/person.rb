class Person < ActiveRecord::Base
  has_many :items

  searchable do
    text :case_number, boost: 5.0
    text :last_name
    text :first_name
    text :phone_number
    text :street_address
  end

end