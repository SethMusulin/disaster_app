json.array!(@items) do |item|
  json.extract! item, :id, :source, :category, :location
  json.url item_url(item, format: :json)
end
