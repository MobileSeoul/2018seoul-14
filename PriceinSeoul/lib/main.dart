import 'package:flutter/material.dart';
import 'Pages/Active/main_active.dart';
import 'Pages/main_Screen.dart';


void main() => runApp(new MyApp());

// void main(){
//   runApp(new MyApp());
// }

class MyApp extends StatelessWidget 
{
  List<Widget> _mainList = List();
  int _number = 0;

  void screenType()
  {
    _number = 1;
  }

  @override
  Widget build(BuildContext context)
  {
    if(_mainList.length == 0)
    {
      _mainList.add(MainScreen());
      _mainList.add(ActiveMain());
    }

    return new MaterialApp(
        title: "My App",
        debugShowCheckedModeBanner: false,
        //home: new HomePage(),

        theme: new ThemeData(
          primarySwatch: Colors.blue
        ),

        home: _mainList[_number],
      );
  }
}