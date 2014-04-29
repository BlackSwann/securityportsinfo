json.array!(@version_sos) do |version_so|
  json.extract! version_so, :id, :name, :description
  json.url version_so_url(version_so, format: :json)
end
