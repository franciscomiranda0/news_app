import 'package:flutter/material.dart';
import 'package:news_app/src/config/routes/app_routes.dart';
import 'package:news_app/src/core/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
