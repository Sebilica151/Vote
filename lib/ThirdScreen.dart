import 'dart:ui';

import'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Back to select'),
      ),
      body: Container(
        child: Center (
          child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(randomAlphaNumeric(6)),
            ],
          ),
        ),
      ),
    );
  }
}