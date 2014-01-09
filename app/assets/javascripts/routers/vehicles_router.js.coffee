class VehiclesRouter extends Backbone.Router
  routes:
    '': 'vehicles_list'

  vehicles_list: =>
    collection = new Vehicles
    collection.fetch()
    view = new VehiclesListView collection: collection
    $('#main-content').html view.render().$el

new VehiclesRouter
