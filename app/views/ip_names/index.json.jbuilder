json.array!(@ip_names) do |ip_name|
  json.extract! ip_name, :id, :name, :is_valid
  json.url ip_name_url(ip_name, format: :json)
end
