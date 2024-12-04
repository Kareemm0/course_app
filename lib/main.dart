import 'package:course_app/course_app.dart';
import 'package:course_app/di.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const CourseApp());

  await initDependencyInjection();
}
