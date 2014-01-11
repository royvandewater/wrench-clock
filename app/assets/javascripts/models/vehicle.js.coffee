class window.Vehicle extends Backbone.Model
  urlRoot: '/api/v1/vehicles'
  initialize: =>
    @has_many 'service_records'
    @on 'error', (model, response) =>
      @set response.responseJSON
