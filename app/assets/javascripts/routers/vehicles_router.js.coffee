class VehiclesRouter extends Backbone.Router
  routes:
    ''             : 'vehicles_list'
    'vehicles/new' : 'new_vehicle'
    'vehicles/:id' : 'vehicle'

  new_vehicle: =>
    model = new Vehicle
    @render new VehicleFormView model: model

  vehicle: (vehicle_id) =>
    model = new Vehicle id: vehicle_id
    model.fetch()
    @render new VehicleView model: model

  vehicles_list: =>
    collection = new Vehicles
    collection.fetch()
    @render new VehiclesListView collection: collection

new VehiclesRouter
