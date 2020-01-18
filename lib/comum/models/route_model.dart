import 'package:flutter/widgets.dart';

class RouteTransitions {
  static Widget _slideContainer(child) => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(100, 0, 0, 0),
                blurRadius: 10,
                spreadRadius: 10),
          ],
        ),
        child: child,
      );

  static final Function fade = (_, anim, __, child) => FadeTransition(
        opacity: anim,
        child: child,
      );

  static final Function noTransition = (_, __, ___, child) => Container(
        child: child,
      );

  static final Function slideRight = (_, anim, ___, child) => SlideTransition(
        position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
            .animate(anim),
        child: _slideContainer(child),
      );

  static final Function slideLeft = (_, anim, ___, child) => SlideTransition(
        position: Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
            .animate(anim),
        child: _slideContainer(child),
      );

  static final Function slideTop = (_, anim, ___, child) => SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
            .animate(anim),
        child: _slideContainer(child),
      );
}

class RouteModel {
  final String name;
  final Widget page;
  final Function transition;

  RouteModel({this.name, this.page, this.transition});
  RouteModel.noTransition({this.name, this.page})
      : transition = RouteTransitions.noTransition;

  RouteModel.fade({this.name, this.page}) : transition = RouteTransitions.fade;
  RouteModel.slideRight({this.name, this.page})
      : transition = RouteTransitions.slideRight;
  RouteModel.slideLeft({this.name, this.page})
      : transition = RouteTransitions.slideLeft;
  RouteModel.slideTop({this.name, this.page})
      : transition = RouteTransitions.slideTop;
}
