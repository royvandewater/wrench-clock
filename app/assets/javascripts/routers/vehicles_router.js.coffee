class VehiclesRouter extends Backbone.Router
  routes:
    ''             : 'vehicles_list'
    'vehicles/:id' : 'vehicle'

  vehicle: (vehicle_id) =>
    model = new Vehicle id: vehicle_id
    model.fetch()
    view = new VehicleView model: model
    $('#main-content').html view.render().$el

  vehicles_list: =>
    collection = new Vehicles
    collection.fetch()
    view = new VehiclesListView collection: collection
    $('#main-content').html view.render().$el


new VehiclesRouter
