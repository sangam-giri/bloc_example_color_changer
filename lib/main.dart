import 'package:bloc_color_changer/logic/bloc/color_changer_bloc/color_changer_bloc.dart';
import 'package:bloc_color_changer/presentation/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ColorChangerBloc(),
        child: Home(),
      ),
    );
  }
}
