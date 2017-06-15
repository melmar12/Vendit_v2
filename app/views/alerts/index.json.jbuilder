json.array!(@alerts) do |alert|
  json.extract! alert, :id, :message, :show
  json.url alert_url(alert, format: :json)
end
