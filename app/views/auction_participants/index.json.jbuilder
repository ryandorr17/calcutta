json.array!(@auction_participants) do |auction_participant|
  json.extract! auction_participant, :id
  json.url auction_participant_url(auction_participant, format: :json)
end
