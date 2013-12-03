json.array!(@projects) do |project|
  json.extract! project, :name, :country, :university, :major, :description, :owner, :contact, :user_id, :comment_id
  json.url project_url(project, format: :json)
end
