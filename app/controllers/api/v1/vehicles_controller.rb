class Api::V1::VehiclesController < Api::V1::ApiController
  before_filter :find_vehicle, :except => [:index, :create]

  def index
    respond_with Vehicle.all, :each_serializer => VehicleSerializer
  end

  def create
    respond_with Vehicle.create vehicle_params
  end

  def show
    respond_with @vehicle
  end

  def update
    respond_with @vehicle.update_attributes vehicle_params
  end

  def destroy
    respond_with @vehicle.destroy
  end

  protected
  def find_vehicle
    @vehicle = Vehicle.find params[:id]
  end

  def vehicle_params
    {
      :name => params[:name],
      :mileage => params[:mileage],
    }
  end

  def vehicle_url(vehicle)
    api_v1_vehicles_path vehicle
  end
end
