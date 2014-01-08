class window.CarRowView extends Backbone.View
  template: JST['templates/car_row']
  tagName: 'a'
  className: 'list-group-item'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.attr href: '#'
    @$el.html @template @context()
    this
