json.array!(@clazzs) do |clazz|
  json.extract! clazz, :id, :name, :description, :start_time, :end_time
  json.url clazz_url(clazz, format: :json)
end
