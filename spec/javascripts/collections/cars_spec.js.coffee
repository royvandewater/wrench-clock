describe 'Cars', ->
  beforeEach ->
    @sut = new Cars

  describe '-> url', ->
    it 'should be', ->
      expect(_.result @sut, 'url').toEqual '/api/v1/cars'


