json.extract! project, :id, :project_name, :project_code, :has_warrant, :gate_passed, :is_capital_project, :start_date, :end_date, :created_at, :updated_at
json.url project_url(project, format: :json)
