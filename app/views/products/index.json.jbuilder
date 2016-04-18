json.array!(@products) do |product|
  json.extract! product, :id, :name, :model, :description, :price, :discount, :manofacturer_id, :category_id
  json.url product_url(product, format: :json)
end
