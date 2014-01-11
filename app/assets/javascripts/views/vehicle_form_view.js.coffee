class window.VehicleFormView extends Backbone.View
  template: JST['templates/vehicle_form']

  initialize: =>
    @listenTo @model, 'sync', => Backbone.history.navigate Path.vehicle(@model.id), trigger: true
    @listenTo @model, 'error invalid', @render

  context: =>
    model: @model.toJSON()

  render: =>
    @$el.html @template @context()
    this

  events:
    'submit form'  : 'save'
    'change input' : 'update_model'
    'keyup  input' : 'update_model'

  save: ($event) =>
    $event.preventDefault()
    @model.save()

  update_model: =>
    @model.set
      name:    @$('.input-name').val()
      mileage: @$('.input-mileage').val()
