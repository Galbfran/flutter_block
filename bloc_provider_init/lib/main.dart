import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter/app.dart';

import 'package:flutter_counter/couter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(CounterApp());
}
