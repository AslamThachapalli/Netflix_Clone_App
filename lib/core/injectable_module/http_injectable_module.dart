import 'package:injectable/injectable.dart';
import 'package:http/http.dart';

@module
abstract class HttpInjectableModule {
  @lazySingleton
  Client get client => Client();
}
