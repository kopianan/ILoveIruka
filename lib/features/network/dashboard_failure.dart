class DashboardFailure extends Error {
  // Use something like "int code;" if you want to translate error messages
  final String message;

  DashboardFailure(this.message);

  @override
  String toString() => message;
}
