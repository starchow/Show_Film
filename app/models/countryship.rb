class Countryship < ActiveRecord::Base
  attr_accessible :film_id, :country_id
  belongs_to :film
  belongs_to :country
end
