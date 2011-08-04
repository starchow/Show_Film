class CreateDirectors < ActiveRecord::Migration
  def self.up
    create_table :directors do |t|
      t.string :name
      t.string :image_uid
      t.string :image_name
      t.timestamps
    end
  end

  def self.down
    drop_table :directors
  end
end
