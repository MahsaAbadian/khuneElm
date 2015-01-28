json.array!(@enrolements) do |enrolement|
  json.extract! enrolement, :id, :grade
  json.url enrolement_url(enrolement, format: :json)
end
