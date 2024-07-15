import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:product_list_screen/core/di/service_locator.dart';
import 'package:product_list_screen/my_app.dart';


void main() {
  serviceLocator.registerLazySingleton<Dio>(() => Dio());
  configureDependencies();
  runApp(const MyApp());
}
