class window.ServiceRecordFormView extends Backbone.View
  template: JST['templates/service_record_form']

  context: =>
    {}

  render: =>
    @$el.html @template @context()
    this
