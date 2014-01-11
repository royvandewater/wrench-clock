class Vehicle < ActiveRecord::Base
  has_many :service_records
end
