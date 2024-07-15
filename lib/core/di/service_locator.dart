import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product_list_screen/core/di/service_locator.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit()
void configureDependencies() => serviceLocator.init();


