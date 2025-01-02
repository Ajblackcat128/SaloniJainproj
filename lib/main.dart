import 'package:classico/assign_9/cubitdbhelper.dart';
import 'package:classico/assign_9/db_helper.dart';
import 'package:classico/assign_9/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final dbHelper = DBHelper.getInstance();
  runApp(BlocProvider(create: (context) => NoteCubit(dbHelper), child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Notes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}