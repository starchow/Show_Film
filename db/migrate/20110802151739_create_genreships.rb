class CreateGenreships < ActiveRecord::Migration
  def self.up
    create_table :genreships do |t|
      t.integer :film_id
      t.integer :genre_id

      t.timestamps
    end
  end

  def self.down
    drop_table :genreships
  end
end
