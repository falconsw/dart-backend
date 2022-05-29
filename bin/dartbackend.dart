import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> arguments) {
  final app = Router();

  app.get('/', indexRouter);

  serve(app, 'localhost', 8080);

}

/// Index page
Response indexRouter(Request request) {
  print('indexRouter');

  return Response.ok(jsonEncode({
    'name': 'dart-backend',
    'version': 0.1,
  }));
}
