json.extract! bug, :id, :title, :branch, :date_created, :severity, :created_by, :description, :repro_steps, :status, :assigned_to, :created_at, :updated_at
json.url bug_url(bug, format: :json)
