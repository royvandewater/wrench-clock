describe 'Vehicle', ->
  beforeEach ->
    @sut = new Vehicle

  describe '-> url', ->
    describe 'with no id', ->
      it 'should generate a url for creating a new vehicle', ->
        expect(_.result @sut, 'url').toEqual '/api/v1/vehicles'

    describe 'with an id', ->
      beforeEach ->
        @sut.set id: 3

      it 'should generate a url', ->
        expect(_.result @sut, 'url').toEqual '/api/v1/vehicles/3'
