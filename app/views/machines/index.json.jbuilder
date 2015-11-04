json.array!(@machines) do |machine|
  json.extract! machine, :id, :tipping, :description, :model
  json.url machine_url(machine, format: :json)
end
