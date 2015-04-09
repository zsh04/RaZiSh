json.array!(@razishes) do |razish|
  json.extract! razish, :id
  json.url razish_url(razish, format: :json)
end
