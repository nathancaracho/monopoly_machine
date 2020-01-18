import 'package:flutter/material.dart';
import 'package:monopoly_machine/comum/Router.dart';
import 'package:monopoly_machine/comum/models/route_model.dart';

class RouterBuilder {
  static PageRouteBuilder builder(settings) {
    RouteModel routeModel =
        Router.list.firstWhere((route) => route.name == settings.name);

    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => routeModel.page,
      transitionsBuilder: routeModel.transition,
    );
  }
}
