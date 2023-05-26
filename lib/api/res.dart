class ApiRes<T, E> {
  int statusCode;
  String message;
  T? response;
  E? error;

  @override
  ApiRes({
    required this.statusCode,
    required this.message,
    this.response,
    this.error,
  });
}
