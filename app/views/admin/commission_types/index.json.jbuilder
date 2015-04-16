json.array!(@commission_types) do |commission_type|
  json.extract! commission_type, :id
  json.url commission_type_url(commission_type, format: :json)
end
