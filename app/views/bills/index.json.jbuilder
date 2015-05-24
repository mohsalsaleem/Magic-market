json.array!(@bills) do |bill|
  json.extract! bill, :id, :promocode, :paid, :product_id, :orderstatus_id, :user_id
  json.url bill_url(bill, format: :json)
end
