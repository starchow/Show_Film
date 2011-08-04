class Actorship < ActiveRecord::Base
  attr_accessible :film_id, :actor_id
  belongs_to :film
  belongs_to :actor
end
