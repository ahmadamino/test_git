import 'package:flutter/material.dart';
import 'package:task1/card.dart';
import 'package:task1/column.dart';
import 'package:task1/container.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView(
        children: [
          //1-Container
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(color: Colors.black,width: 2)),
                alignment: Alignment.center,
                height: 100,
                child: Text('Container',style: TextStyle(color: Colors.blue,fontSize: 30),),
              ),
            ),
          //2-card
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Two();
              }));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(color: Colors.black,width: 2)),
              alignment: Alignment.center,
              height: 100,
              child: Text('Card',style: TextStyle(color: Colors.blue,fontSize: 30),),
            ),
          ),
          //3-Column+row+expended+icon+Center+Divider+floatingActionButton+dropdownButton
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Three();
              }));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(color: Colors.black,width: 2)),
              alignment: Alignment.center,
              height: 100,
              child: Text('Column+Row+++',style: TextStyle(color: Colors.blue,fontSize: 30),),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,border: Border.all(color: Colors.black,width: 2)),
              alignment: Alignment.center,
              height: 100,
              child: Text('Container',style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,border: Border.all(color: Colors.black,width: 2)),
              alignment: Alignment.center,
              height: 100,
              child: Text('Container',style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return One();
              }));
            },
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,border: Border.all(color: Colors.black,width: 2)),
              alignment: Alignment.center,
              height: 100,
              child: Text('Container',style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
          ),
        ],
      ),
    );
  }
}
