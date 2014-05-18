json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :phone_number, :street_address, :city, :state, :zip_code, :case_number
  json.url person_url(person, format: :json)
end
