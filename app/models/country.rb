# == Schema Information
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Country < ActiveRecord::Base
  has_many :films, :through => :countryships
  has_many :countryships
  attr_accessible :name
  
  validates_uniqueness_of :name
  validates_presence_of :name
end



