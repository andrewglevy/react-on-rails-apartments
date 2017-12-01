class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :postal
      t.string :country
      t.string :contact_info
      t.string :building_manager_name
      t.string :building_manager_phone
      t.string :building_manager_hours

      t.timestamps
    end
  end
end
