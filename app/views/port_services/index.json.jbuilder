json.array!(@port_services) do |port_service|
  json.extract! port_service, :id, :port_id, :service_id
  json.url port_service_url(port_service, format: :json)
end
