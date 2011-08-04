# == Schema Information
#
# Table name: genres
#
#  id         :integer         not null, primary key
#  name      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Genre < ActiveRecord::Base
  has_many :films, :through => :genreships
  has_many :genreships
  attr_accessible :name
  
  validates_uniqueness_of :name
  validates_presence_of :name
end


