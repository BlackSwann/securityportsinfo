json.array!(@ports) do |port|
  json.extract! port, :id, :number, :description
  json.url port_url(port, format: :json)
end
