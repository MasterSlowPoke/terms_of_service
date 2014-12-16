json.array!(@terms) do |term|
  json.extract! term, :id, :date_start, :date_end, :text, :change_message
  json.url term_url(term, format: :json)
end
