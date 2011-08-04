class Directorship < ActiveRecord::Base
  attr_accessible :film_id, :director_id
  belongs_to :film
  belongs_to :director
end
