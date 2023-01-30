import 'package:flutter/material.dart';
import 'package:navigation/hpage.dart';
import 'package:navigation/lpage.dart';
import 'package:navigation/setpage.dart';
import 'package:navigation/spage.dart';

void main() {
  runApp(MaterialApp(
    home: navi(),
  ));
}

class navi extends StatefulWidget {
  const navi({Key? key}) : super(key: key);

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int seleIdx=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("navigation")),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: seleIdx,onTap: (value) {
        setState(() {
          seleIdx=value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting")
      ]),
      body: IndexedStack(
        index: seleIdx,
         children: [home(),search(),setting()],
      ),
      // Align(
      //   alignment: Alignment.bottomLeft,
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //     Expanded(child: IconButton(onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return home();
      //       },));
      //     }, icon: Icon(Icons.home,size: 40,))),
      //     Expanded(child: IconButton(onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return setting();
      //       },));
      //     }, icon: Icon(Icons.settings,size: 40,))),
      //     Expanded(child: IconButton(onPressed: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return search();
      //       },));
      //     }, icon: Icon(Icons.search,size: 40,))),
      //     Expanded(child: InkWell(onTap: () {
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //         return like();
      //       },));
      //     },child: Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("image/like.png"))),)))
      //   ]),
      // ),
    );
  }
}
