class ServiceRecord < ActiveRecord::Base
  belongs_to :vehicle

  validates :vehicle, :presence => true
  validates :name, :presence => true
  validates :mileage, :presence => true
end
