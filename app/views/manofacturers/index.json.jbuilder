json.array!(@manofacturers) do |manofacturer|
  json.extract! manofacturer, :id, :name, :video
  json.url manofacturer_url(manofacturer, format: :json)
end
