// ignore_for_file: prefer_const_constructors, unused_import, no_leading_underscores_for_local_identifiers, unused_field

import 'package:flutter/material.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget _child;
  SlidePageRoute(this._child)
      : super(
            transitionDuration: Duration(milliseconds: 500,),
            transitionsBuilder: (BuildContext _context,
                Animation<double> animation,
                Animation<double> secondAnimation,
                Widget child) {
                  Animation<Offset> animation1=Tween<Offset>(begin: Offset(-1, 0),end: Offset(0, 0)).animate(animation);
              return SlideTransition(position: animation1 , child: child);
            },
            pageBuilder:
                (BuildContext _context, animation, secondaryAnimation) {
              return _child;
            });
}
