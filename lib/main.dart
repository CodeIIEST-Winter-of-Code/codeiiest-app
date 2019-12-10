import 'package:codeiiest/screens/wrapper.dart';
import 'package:codeiiest/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:codeiiest/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authenticator().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}