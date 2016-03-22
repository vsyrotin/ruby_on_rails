json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :status_id, :user_id, :email, :problem
  json.url ticket_url(ticket, format: :json)
end
