class Item < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name
  validates_length_of :name, minimum: 1
end
