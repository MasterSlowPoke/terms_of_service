json.array!(@super_partners) do |super_partner|
  json.extract! super_partner, :id, :name, :code
  json.url super_partner_url(super_partner, format: :json)
end
