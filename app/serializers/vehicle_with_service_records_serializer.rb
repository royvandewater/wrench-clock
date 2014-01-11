class VehicleWithServiceRecordsSerializer < ActiveModel::Serializer
  attributes :id, :name, :mileage
  has_many :service_records
end
