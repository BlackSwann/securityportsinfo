json.array!(@service_version_sos) do |service_version_so|
  json.extract! service_version_so, :id, :version_so_id, :service_id
  json.url service_version_so_url(service_version_so, format: :json)
end
