json.array!(@comments) do |comment|
  json.extract! comment, :comment, :user_id, :project_id
  json.url comment_url(comment, format: :json)
end
