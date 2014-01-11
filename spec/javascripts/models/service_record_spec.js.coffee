describe 'ServiceRecord', ->
  beforeEach ->
    @sut = new ServiceRecord

  describe '-> url', ->
    describe 'without a vehicle_id', ->
      it 'should return undefined', ->
        expect(_.result @sut, 'url').toBeUndefined()

    describe 'with a vehicle_id', ->
      beforeEach ->
        @sut.set vehicle_id: 4

      it 'generates a url to create a service record', ->
        expect(_.result @sut, 'url').toEqual '/api/v1/vehicles/4/service_records'

    describe 'with a different vehicle_id', ->
      beforeEach ->
        @sut.set vehicle_id: 89

      it 'generates a url to create a service record', ->
        expect(_.result @sut, 'url').toEqual '/api/v1/vehicles/89/service_records'


