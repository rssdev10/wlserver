class Nvram < ActiveRecord::Base
  attr_accessible :name, :val
  validates_uniqueness_of :name
end
