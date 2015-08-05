json.array!(@chats) do |chat|
  json.extract! chat, :id, :comment, :book_id
  json.url chat_url(chat, format: :json)
end
