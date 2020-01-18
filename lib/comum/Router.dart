import 'package:monopoly_machine/comum/models/route_model.dart';
import 'package:monopoly_machine/form/form_page.dart';
import 'package:monopoly_machine/home/home_page.dart';

class Router {
  static final List<RouteModel> list = [
    RouteModel.noTransition(name: '/', page: HomePage()),
    RouteModel.slideTop(name: '/formpage', page: FormPage()),
  ];
}
