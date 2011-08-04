# == Schema Information
#
# Table name: directors
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Director < ActiveRecord::Base
  has_many :films, :through => :directorships
  has_many :directorships
  image_accessor :image    
  
  attr_accessible :name
  
  validates_uniqueness_of :name
  validates_presence_of :name
end

