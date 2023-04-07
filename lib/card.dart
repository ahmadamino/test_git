import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(elevation: 10,
        color: Colors.blue,
        margin: EdgeInsets.all(30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Text(
        'welcome Ahmed al syed yahya',
        style: TextStyle(fontSize: 20,color: Colors.white),
      )),
    );
  }
}
