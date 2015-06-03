json.array!(@delivery_addresses) do |delivery_address|
  json.extract! delivery_address, :id, :name, :address, :city, :state, :pincode, :phoneno, :user_id
  json.url delivery_address_url(delivery_address, format: :json)
end
