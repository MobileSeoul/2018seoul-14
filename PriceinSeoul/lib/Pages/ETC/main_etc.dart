import 'package:flutter/material.dart';
import 'hairshop.dart';
import 'laundry.dart';
import 'photostudio.dart';

class EtcMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => EtcMainState();
}

class EtcMainState extends State<EtcMain>{

    final _bottomNavigationColor = Colors.black;
    int _currnetIndex = 0;
    List<Widget> _list = List();

  @override
  void initState(){
    
    _list..add(HairShop())..add(Laundry())..add(PhotoStudio());
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _list[_currnetIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: new Image.asset('assets/hairshop.png', width: 30.0, height: 30.0), title: Text('미용실', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/laundry.png', width: 30.0, height: 30.0), title: Text('세탁소', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
          BottomNavigationBarItem(icon: new Image.asset('assets/photostudio.png', width: 30.0, height: 30.0), title: Text('사진관', style: TextStyle(color: _bottomNavigationColor, fontSize: 10.0, fontWeight: FontWeight.w700),)),
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
