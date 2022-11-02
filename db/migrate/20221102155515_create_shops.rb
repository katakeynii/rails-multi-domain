class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :tagline
      t.string :subdomain
      t.string :phone_number

      t.timestamps
    end
    add_index :shops, :subdomain, unique: true
  end
end
