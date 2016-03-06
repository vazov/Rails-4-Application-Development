json.array!(@pages) do |page|
  json.extract! page, :id, :title, :body, :page_type
  json.url page_url(page, format: :json)
end
