json.array!(@causes) do |cause|
  json.extract! cause, :id, :name, :description, :logo
  json.url cause_url(cause, format: :json)
end
