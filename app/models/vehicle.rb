class Vehicle < ActiveRecord::Base
  has_many :service_records

  validates :name, :presence => true, :uniqueness => true
  validates :mileage, :presence => true, :numericality => true
end
