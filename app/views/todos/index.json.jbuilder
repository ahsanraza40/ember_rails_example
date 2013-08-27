json.array!(@todos) do |todo|
  json.extract! todo, :content, :closed
  json.url todo_url(todo, format: :json)
end
