json.array!(@class_sessions) do |class_session|
  json.extract! class_session, :id, :name, :date, :end_page, :goal_end_page, :report
  json.url class_session_url(class_session, format: :json)
end
