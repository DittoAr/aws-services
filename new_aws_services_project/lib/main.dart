import 'package:flutter/material.dart';
import 'package:new_aws_sercices/navigation/app_routes.dart' as routes;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: routes.home,
      onGenerateRoute: routes.controller,
    );
  }
}
