class window.ServiceRecordRowView extends Backbone.View
  template: JST['templates/service_record_row']
  tagName: 'a'
  className: 'list-group-item'

  initialize: =>
    @listenTo @model, 'remove', @remove
    @listenTo @model, 'change', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this
