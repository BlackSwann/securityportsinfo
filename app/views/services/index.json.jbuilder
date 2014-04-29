json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :type_of_service_id
  json.url service_url(service, format: :json)
end
