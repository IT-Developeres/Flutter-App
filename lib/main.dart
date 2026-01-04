import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(Buildcontext context) {
    return MaterialApp(
      bebugShowCheckedModeBanner: false,
      title: 'Week one Flutter Internship Project',
      home: loginScreen(),
      );
  }}
