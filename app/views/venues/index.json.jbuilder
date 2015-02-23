json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :manager_name, :phone_number, :address, :email, :capacity, :adult, :user_id
  json.url venue_url(venue, format: :json)
end
