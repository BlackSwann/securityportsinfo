json.array!(@type_of_services) do |type_of_service|
  json.extract! type_of_service, :id, :name, :description
  json.url type_of_service_url(type_of_service, format: :json)
end
