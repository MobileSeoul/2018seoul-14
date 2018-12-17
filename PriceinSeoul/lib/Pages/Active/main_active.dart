import 'package:flutter/material.dart';
import 'billiard_screen.dart';
import 'bowling_screen.dart';
import 'golf_screen.dart';
import 'internetcafe_screen.dart';

class ActiveMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ActiveMainState();
}

class ActiveMainState extends State<ActiveMain>{

    final _bottomNavigationColor = Colors.black;
    int _currnetIndex = 0;
    List<Widget> _list = List();

  @override
  void initState(){
    
    _list..add(Internetcafe())..add(Billiard())..add(Bowling())..add(Golf());
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _list[_currnetIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(icon: new Image.asset('assets/pc.png', width: 30.0, height: 30.0), title: Text('피시방', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/billiard.png', width: 30.0, height: 30.0), title: Text('당구장', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/bowling.png', width: 30.0, height: 30.0), title: Text('볼링장', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/golf.png', width: 30.0, height: 30.0), title: Text('골프장', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
        ],

        currentIndex: _currnetIndex,
        onTap: (int index){
          setState(() {
              _currnetIndex = index;
                    });
        },
      ),
    );
  }
}
