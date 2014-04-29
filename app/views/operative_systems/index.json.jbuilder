json.array!(@operative_systems) do |operative_system|
  json.extract! operative_system, :id, :name, :description
  json.url operative_system_url(operative_system, format: :json)
end
