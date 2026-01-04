import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
    const HomeScreen ({super.key});

    @override
    Widget build(Buildcontext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text("Home Screen"),
                centerTitle: true,
            ),
            body const Center(
                child: Text(
                    "Wellcome to My Login Page",
                    style: TextStyle (fontSize: 20),
                ),
            ),
        );
    }
}