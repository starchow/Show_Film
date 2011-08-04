class CreateDirectorships < ActiveRecord::Migration
  def self.up
    create_table :directorships do |t|
      t.integer :film_id
      t.integer :director_id

      t.timestamps
    end
  end

  def self.down
    drop_table :directorships
  end
end
