json.array!(@service_versions) do |service_version|
  json.extract! service_version, :id, :version, :dateBegin, :dateEnd, :service_id
  json.url service_version_url(service_version, format: :json)
end
