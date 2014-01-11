class ServiceRecord < ActiveRecord::Base
  belongs_to :vehicle

  validates :name, :presence => true
  validates :mileage, :presence => true
end
