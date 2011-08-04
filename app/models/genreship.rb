class Genreship < ActiveRecord::Base
  attr_accessible :film_id, :genre_id
  belongs_to :film
  belongs_to :genre
end
