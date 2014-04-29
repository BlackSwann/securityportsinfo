json.array!(@vulnerabilities) do |vulnerability|
  json.extract! vulnerability, :id, :name, :description, :discovered, :service_version_id, :service_id
  json.url vulnerability_url(vulnerability, format: :json)
end
