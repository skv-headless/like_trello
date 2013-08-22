json.task do
  json.extract! @task, :id, :title, :body, :state, :created_at, :updated_at
end
