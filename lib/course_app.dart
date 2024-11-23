import 'package:course_app/Core/styles/app_styles.dart';
import 'package:flutter/material.dart';

import 'Core/app/app_routing.dart';

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeData(),
      routerConfig: router,
    );
  }
}
