// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_field, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double _deviceHeight = 0;
  double _deviceWidth = 0;
  final Color _primaryColor = const Color.fromRGBO(125, 191, 211, 1.0);
  Color _secondaryColor = Color.fromRGBO(169, 224, 241, 1.0);
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: _primaryColor,
        body: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _avatarWidget(),
            ],
          ),
        ),);
  }

  Widget _avatarWidget() {
    double _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
        color: _secondaryColor,
        borderRadius: BorderRadius.circular(500),
        image: DecorationImage(
            image: AssetImage(
          '../../assets/images/avatar.png',
        ),),
      ),
    );
  }
}
