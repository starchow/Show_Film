class CreateActorships < ActiveRecord::Migration
  def self.up
    create_table :actorships do |t|
      t.integer :film_id
      t.integer :actor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :actorships
  end
end
