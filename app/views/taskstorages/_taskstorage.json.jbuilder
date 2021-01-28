json.extract! taskstorage, :id, :title, :body, :type, :created_at, :updated_at
json.url taskstorage_url(taskstorage, format: :json)
