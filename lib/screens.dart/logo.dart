import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapp/screens.dart/homepage.dart';

void main() {
  runApp(const Logo());
}

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Homescreen(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
        colors: [Colors.blue,Colors.red])),
        child: Center(child: Image.asset("assets/BRR.png"),),),),
      
    );
  }
}
