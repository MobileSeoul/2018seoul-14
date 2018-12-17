import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/Active/main_active.dart';
import 'package:priceinseoul/Pages/Drink/main_drink.dart';
import 'package:priceinseoul/Pages/Food/main_food.dart';
import 'package:priceinseoul/Pages/Model/method.dart';
import 'package:priceinseoul/Pages/ETC/main_etc.dart';
import 'package:priceinseoul/Pages/main_body_test.dart';

void main(){
  runApp(
    new MaterialApp(
      title: 'DBM',
      home: new MainScreen(),
      routes: {
        'BottomNavigationWidget': (BuildContext _) => new ActiveMain(),
      },
    ),
  );
}

class MainScreen extends StatefulWidget{
  final int _a = 1;

  @override
  State<StatefulWidget> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen>{

  List<Widget>_bodylist = new List();
  int cnt = 0;
  //MainScreenState({this.cnt});

  @override
  void initState(){
    _bodylist..add(MainBody_Test())..add(ActiveMain());
    getlocation();
    super.initState();
  }

   void _changeText()
   {
      setState(() {
      });
   }
   void cnt_0()
   {
     cnt = 0;
     _changeText();
   }
   void active()
   {
      setState(() {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActiveMain())
        );
    });
   }
   void food()
   {
     setState(() {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodMain())
        );
    });
   }
   void drink()
   {
    setState(() {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrinkMain())
        );
    });
   }
   void etc()
   {
    setState(() {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EtcMain())
        );
    });
   }

   Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
   }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Price in Seoul"),
        centerTitle: true,
        backgroundColor: Color(0xFF63A945),
      ),
      body: _bodylist[cnt],

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              onTap: cnt_0,
              title: new Text("Price in Seoul", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400)),
              // trailing: new Icon(Icons.arrow_right),
            ),
            new Divider(),
            new ListTile(
              onTap: food,
              leading: const Icon(Icons.restaurant),
              title: new Text("먹거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("한식/중식/일식/경양식/분식/치킨/피자", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              onTap: drink,
              leading: const Icon(Icons.local_cafe),
              title: new Text("마실거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("커피/녹차", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              onTap: active,
              leading: const Icon(Icons.audiotrack),
              title: new Text("놀거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("피시방/당구/볼링/골프", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
            new ListTile(
              onTap: etc,
              leading: const Icon(Icons.highlight),
              title: new Text("편의거리", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),),
              trailing: new Icon(Icons.arrow_right),
              subtitle: const Text("미용실/세탁소/사진관", style: TextStyle(fontSize: 10.0),
              ),
            ),
            new Divider(),
          ],
        ),
      ),
    );
  }
}
