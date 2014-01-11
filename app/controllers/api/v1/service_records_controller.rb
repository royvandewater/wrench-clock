class Api::V1::ServiceRecordsController < Api::V1::ApiController
  before_filter :find_vehicle, :only => [:index, :create]
  before_filter :find_service_record, :except => [:index, :create]

  def index
    respond_with @vehicle.service_records.all
  end

  def create
    respond_with @vehicle.service_records.create service_record_params
  end

  def show
    respond_with @service_record
  end

  def update
    respond_with @service_record.update_attributes service_record_params
  end

  def destroy
    respond_with @service_record.destroy
  end

  protected
  def find_service_record
    @service_record = ServiceRecord.find params[:id]
  end

  def find_vehicle
    @vehicle = Vehicle.find params[:vehicle_id]
  end

  def service_record_params
    {
      :name => params[:name],
      :mileage => params[:mileage],
    }
  end

  def service_record_url(service_record)
    api_v1_service_record_path service_record
  end
end
