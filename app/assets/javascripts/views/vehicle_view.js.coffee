class window.VehicleView extends Backbone.View
  template: JST['templates/vehicle']
  initialize: =>
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
