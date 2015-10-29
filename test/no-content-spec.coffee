NoContent = require '../src/no-content'

describe 'NoContent', ->
  beforeEach ->
    @sut = new NoContent


  describe '->do', ->
    describe 'when given a sawblade', ->
      beforeEach (done) ->
        request =
          metadata:
            responseId: 'sawblade (cut it out)'

        @sut.do request, (error, @response) => done error

      it 'should respond with a 204', ->
        expect(@response).to.deep.equal
          metadata:
            responseId: 'sawblade (cut it out)'
            code: 204
            status: 'No Content'

    describe 'when an unnatural disaster occurs', ->
      beforeEach (done) ->
        request =
          metadata:
            responseId: 'unnatural-disaster (at least youll make the paper)'

        @sut.do request, (error, @response) => done error

      it 'should respond with a 204', ->
        expect(@response).to.deep.equal
          metadata:
            responseId: 'unnatural-disaster (at least youll make the paper)'
            code: 204
            status: 'No Content'
