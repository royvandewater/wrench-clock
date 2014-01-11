class window.VehicleRowView extends Backbone.View
  template: JST['templates/vehicle_row']
  tagName: 'a'
  className: 'list-group-item'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    @$el.attr href: Path.vehicle(@model.id)
    this
