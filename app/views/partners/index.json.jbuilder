json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :code
  json.url partner_url(partner, format: :json)
end
