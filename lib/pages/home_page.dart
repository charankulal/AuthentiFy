// ignore_for_file: unused_field, prefer_const_constructors, sized_box_for_whitespace

import 'package:authentify_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight;
  late double _deviceWidth;
  final Color _primaryColor = Color.fromRGBO(169, 224, 241, 1.0);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: _deviceWidth,
          height: _deviceHeight * 0.70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _avatarWidget(),
              SizedBox(height: _deviceHeight*0.03,),
              _nameWidget(),
              SizedBox(height: _deviceHeight*0.22,),
              _logoutButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _avatarWidget() {
    double _circleD = _deviceHeight * 0.25;
    return Container(
      height: _circleD,
      width: _circleD,
      decoration: BoxDecoration(
        color: _primaryColor,
        borderRadius: BorderRadius.circular(500),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/avatar.png', // Correct asset path
          ),
        ),
      ),
    );
  }

  Widget _nameWidget() {
    return Container(
      child: Text(
        "Charan K",
        style: TextStyle(
            color: _primaryColor, fontSize: 35, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _logoutButton(BuildContext _context) {
    return MaterialButton(
      minWidth: _deviceWidth * 0.30,
      height: _deviceWidth * 0.10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(
          color: _primaryColor,
          width: 3,
        ),
      ),
      child: Text(
        "LOG OUT",
        style: TextStyle(
          fontSize: 16,
          color: _primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.push(_context,
            MaterialPageRoute(builder: (BuildContext _context) {
          return AnimatedLoginPage();
        }));
      },
    );
  }
}
