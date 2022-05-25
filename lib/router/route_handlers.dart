import 'package:curso_flutter_web_frontend_dashboard/ui/views/counter_provider_view.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/views/counter_view.dart';
import 'package:curso_flutter_web_frontend_dashboard/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

final Handler counterHandler = Handler(handlerFunc: ((context, params) {
  return CounterView(base: params['base']?.first ?? '11');
}));

final Handler counterproviderHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?.first ?? '100');
});

final Handler dashboardUserHandler = Handler(handlerFunc: (context, params) {
  print(params);
  return View404();
});
final Handler pageNotFound = Handler(
  handlerFunc: (_, __) => const View404(),
);
