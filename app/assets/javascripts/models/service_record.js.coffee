class window.ServiceRecord extends Backbone.Model
  initialize: =>
    @on 'error', (model, response) =>
      @set response.responseJSON

  url: =>
    return unless @has 'vehicle_id'
    "/api/v1/vehicles/#{@get 'vehicle_id'}/service_records"
