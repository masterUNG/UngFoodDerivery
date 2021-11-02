import 'package:flutter/material.dart';
import 'package:ungfoodderviry/states/authen.dart';
import 'package:ungfoodderviry/states/create_accont.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
};

String? firstState;

void main() {
  firstState = '/authen';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstState,
    );
  }
}
