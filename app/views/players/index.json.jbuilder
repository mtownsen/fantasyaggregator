json.array!(@players) do |player|
  json.extract! player, :id, :name, :refid, :image_url, :position
  json.url player_url(player, format: :json)
end
