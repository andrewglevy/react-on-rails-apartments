json.extract! listing, :id, :address, :city, :state, :postal, :country, :contact_info, :building_manager_name, :building_manager_phone, :building_manager_hours, :created_at, :updated_at
json.url listing_url(listing, format: :json)
