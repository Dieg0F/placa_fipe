class ServerResponse {
  final String results;
  final String error;

  ServerResponse(this.results, this.error);

  ServerResponse.withError(String errorValue)
      : results = '',
        error = errorValue;
}