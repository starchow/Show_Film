class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :name
      t.string :vi_name
      t.date :release_day
      t.text :plot
      t.integer :runtime
      t.text :overview
      t.string :cover_image_uid
      t.string :cover_image_name
      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
