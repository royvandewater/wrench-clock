class window.VehiclesListView extends Backbone.View
  template: JST['templates/vehicles_list']

  initialize: =>
    @views = []
    @listenTo @collection, 'add', @add_one
    @listenTo @collection, 'sync error request reset', @render

  context: =>
    loading: @collection.loading

  render: =>
    @$el.html @template @context()
    @remove_views()
    @collection.each @add_one
    this

  remove: =>
    @remove_views()
    super

  # Instance Methods
  add_one: (model) =>
    view = new VehicleRowView model: model
    @$('ul').append view.render().$el
    @views.push view

  remove_views: =>
    _.each @views, (view) =>
      view.remove()

    @views = []
