import 'package:flutter/material.dart';

import 'package:flutter_ui_social_user_profiles/profile/profile.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Profile()
      ),
    );
  }
}