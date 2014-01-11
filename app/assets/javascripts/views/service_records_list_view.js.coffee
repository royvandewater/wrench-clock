class window.ServiceRecordsListView extends Backbone.View
  template: JST['templates/service_records_list']

  initialize: =>
    @views = []
    @listenTo @collection, 'add', @add_one
    @listenTo @collection, 'sync error request reset', @render

  context: =>
    parent: @model.toJSON()
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
    view = new ServiceRecordRowView model: model
    @$('.new-service-record').before view.render().$el
    @views.push view

  remove_views: =>
    _.each @views, (view) =>
      view.remove()

    @views = []
