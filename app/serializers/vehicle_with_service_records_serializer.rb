class VehicleWithServiceRecordsSerializer < ActiveModel::Serializer
  attributes :id, :name, :mileage, :updated_at
  has_many :service_records
end
