json.extract! task, :id, :title, :body, :lavel_importance, :status, :end_date, :color, :created_at, :updated_at
json.url task_url(task, format: :json)
