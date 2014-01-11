class ServiceRecordsRouter extends Backbone.Router
  routes:
    'vehicles/:vehicle_id/service_records/new' : 'new_service_record'

  new_service_record: (vehicle_id) =>
    model = new ServiceRecord vehicle_id: vehicle_id
    @render new ServiceRecordFormView model: model

new ServiceRecordsRouter
