class Customer < ActiveRecord::Base
  has_many :orders
  validates_presence_of :address, :name
end
