json.array!(@events) do |event|
  json.extract! event, :id, :name, :sport, :league, :start_date, :cutoff
  json.url event_url(event, format: :json)
end
