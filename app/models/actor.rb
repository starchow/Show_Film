# == Schema Information
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Actor < ActiveRecord::Base
  has_many :films, :through => :actorships
  has_many :actorships
  image_accessor :image
  
  attr_accessible :name
  
  validates_uniqueness_of :name
  validates_presence_of :name
end
