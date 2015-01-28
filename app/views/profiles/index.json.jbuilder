json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :phone_number, :address, :birth_date, :expertise, :description
  json.url profile_url(profile, format: :json)
end
