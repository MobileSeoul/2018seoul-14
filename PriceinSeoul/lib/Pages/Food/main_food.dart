import 'package:flutter/material.dart';
import 'koreanfood_screen.dart';
import 'japanesefood_screen.dart';
import 'chinesefood_screen.dart';
import 'chicken_screen.dart';
import 'pizza_screen.dart';
import 'burger_screen.dart';


class FoodMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => FoodMainState();
}

class FoodMainState extends State<FoodMain>{

    final _bottomNavigationColor = Colors.black;
    int _currnetIndex = 0;
    List<Widget> _list = List();

  @override
  void initState(){
    
    _list..add(Korea())..add(Japan())..add(China())..add(Chicken())..add(Pizza())..add(Burger());
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _list[_currnetIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: new Image.asset('assets/korea.png', width: 30.0, height: 30.0), title: Text('한식', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/japan.png', width: 30.0, height: 30.0), title: Text('일식', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/china.png', width: 30.0, height: 30.0), title: Text('중식', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/chicken.png', width: 30.0, height: 30.0), title: Text('치킨', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/pizza.png', width: 30.0, height: 30.0), title: Text('피자', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/burger.png', width: 30.0, height: 30.0), title: Text('햄버거', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
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
