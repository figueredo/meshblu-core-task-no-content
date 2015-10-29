class NoContent
  do: (request, callback) =>
    response =
      metadata:
        responseId: request.metadata.responseId
        code: 204
        status: 'No Content'

    callback null, response


module.exports = NoContent
