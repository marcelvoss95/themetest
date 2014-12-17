json.array!(@dings) do |ding|
  json.extract! ding, :id, :zeug
  json.url ding_url(ding, format: :json)
end
