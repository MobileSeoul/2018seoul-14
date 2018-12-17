import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/Active/main_active.dart';

class DrawerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // return Scaffold(
      return new Drawer(
      // drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              // onTap: cnt_0,
              onTap: null,
              title: new Text("메인화면", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),),
              trailing: new Icon(Icons.arrow_right),
            ),
            new Divider(),
            new ListTile(
              // onTap: cnt_1,
              leading: const Icon(Icons.audiotrack),
              title: new Text("놀거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("피시방/당구/볼링/골프", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              leading: const Icon(Icons.restaurant),
              title: new Text("먹거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("한식/양식/중식/일식/경양식/치킨/피자", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              leading: const Icon(Icons.local_cafe),
              title: new Text("마실거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("커피/녹차", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              leading: const Icon(Icons.highlight),
              title: new Text("편의거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("미용실/세탁소/사진관", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            // new ListTile(
            //   title: new Text("게시판_3"),
            //   trailing: new Icon(Icons.arrow_right),
            // ),
            // new Divider(),
            // new ListTile(
            //   title: new Text("게시판_4"),
            //   trailing: new Icon(Icons.arrow_right),
            // ),
            // new Divider(),
          ],
        ),
      );
    // );
  }
}