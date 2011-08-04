class CreateCountryships < ActiveRecord::Migration
  def self.up
    create_table :countryships do |t|
      t.integer :film_id
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :countryships
  end
end
