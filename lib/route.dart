import 'package:flutter/material.dart';
import 'package:pegadaian_digital/home.dart';
import 'package:pegadaian_digital/main.dart';
import 'package:pegadaian_digital/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  '/Welcome': (BuildContext context) => const Welcome(),
  '/A': (BuildContext context) => const MyWidget(),
};