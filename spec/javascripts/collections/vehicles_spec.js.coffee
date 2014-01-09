describe 'Vehicles', ->
  beforeEach ->
    @sut = new Vehicles

  describe '-> url', ->
    it 'should return a very simple API url', ->
      expect(_.result @sut, 'url').toEqual '/api/v1/vehicles'

