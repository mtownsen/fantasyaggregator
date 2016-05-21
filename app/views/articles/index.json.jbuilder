json.array!(@articles) do |article|
  json.extract! article, :id, :source_url, :site_url, :body
  json.url article_url(article, format: :json)
end
