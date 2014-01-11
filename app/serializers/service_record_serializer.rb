class ServiceRecordSerializer < ActiveModel::Serializer
  attributes :id, :name, :mileage, :updated_at
end
