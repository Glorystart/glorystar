json.array!(@contents) do |content|
  json.extract! content, :id, :name, :page_id
  json.url content_url(content, format: :json)
end
