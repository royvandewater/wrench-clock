class CarsRouter extends Backbone.Router
  routes:
    '': 'cars'

  cars: =>
    collection = new Cars
    collection.fetch()
    view = new CarsList collection: collection
    $('#main-content').html view.render().$el

new CarsRouter
