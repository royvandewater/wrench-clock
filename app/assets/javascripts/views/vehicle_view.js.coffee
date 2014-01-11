class window.VehicleView extends Backbone.View
  template: JST['templates/vehicle']
  initialize: =>
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    view = new ServiceRecordsListView collection: @model.service_records
    @$el.append view.render().$el
    this
