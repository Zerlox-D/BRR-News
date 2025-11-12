import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  List<List<dynamic>> broadcast = [];
  int? index;
  Secondscreen({super.key, required this.broadcast, required this.index});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Image.asset(widget.broadcast[widget.index!][0]),
          Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Text(
                    widget.broadcast[widget.index!][1],
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.broadcast[widget.index!][2],
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
