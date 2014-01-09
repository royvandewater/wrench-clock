class window.VehicleRowView extends Backbone.View
  template: JST['templates/vehicle_row']
  tagName: 'li'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
