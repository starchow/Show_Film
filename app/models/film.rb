# == Schema Information
#
# Table name: films
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  vi_name     :string(255)
#  release_day :date
#  plot        :text
#  runtime     :integer
#  overview    :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Film < ActiveRecord::Base
  has_many :actors, :through => :actorships
  has_many :countries, :through => :countryships
  has_many :directories, :through => :directorships
  has_many :genres, :through => :genreships
  has_many :actorships
  has_many :countryships
  has_many :directorships
  has_many :genreships
  
  image_accessor :cover_image    
  
  attr_accessible :name, :vi_name, :release_day, :plot, :runtime, :overview,
                  :actor_tokens, :country_tokens, :director_tokens, :genre_tokens
  attr_reader :actor_tokens, :country_tokens, :director_tokens, :genre_tokens
  def actor_tokens=(ids)
    self.actor_ids = ids.split(",")
  end

  def country_tokens=(ids)
    self.country_ids = ids.split(",")
  end

  def director_tokens=(ids)
    self.director_ids = ids.split(",")
  end

  def genre_tokens=(ids)
    self.genre_ids = ids.split(",")
  end
  
  validates_uniqueness_of :name, :vi_name
  validates_presence_of :name, :vi_name
end

