class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.text :address
      t.datetime :birth_date
      t.string :expertise
      t.text :description

      t.timestamps
    end
  end
end
