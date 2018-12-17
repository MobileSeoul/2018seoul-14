import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/Active/main_active.dart';
import 'package:priceinseoul/Pages/Drink/main_drink.dart';
import 'package:priceinseoul/Pages/Food/main_food.dart';
import 'package:priceinseoul/Pages/ETC/main_etc.dart';

class MainBody extends StatefulWidget{
  @override
  MainBodyState createState() => new MainBodyState();
}

class MainBodyState extends State<MainBody>{

 List data;

void active()
   {
      setState(() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActiveMain())
        );
    });
   }
   void food()
   {
     setState(() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodMain())
        );
    });
   }
   void drink()
   {
    setState(() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrinkMain())
        );
    });
   }
   void etc()
   {
    setState(() {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => EtcMain())
        );
    });
   }


 @override
 Widget build(BuildContext context){
    return Scaffold(
      body: 
      new Container
      (
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
            child: 
            new FlatButton(onPressed: (){setState(() {
                  });},
                  child: new ConstrainedBox(
                  constraints: new BoxConstraints.expand(),

                  child: new Image.network
                  ( "", gaplessPlayback: false,),
                  ),  
                  ),

            width: MediaQuery.of(context).size.width,
            height: 150.0,
          ),
              new Column( mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                        new Column(
                          children: <Widget>[
                                new Container(
                                  child: new RaisedButton(
                                    onPressed: food,
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Image(
                                            image: new AssetImage('assets/food.png'), height: 70.0, width: 70.0,
                                          ),
                                          new Text("먹거리", style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),),
                                      ],
                                    ), color: Colors.white, 
                                  ),
                                  width: 120.0, height: 120.0,
                                ),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                                new Container(
                                  child: new RaisedButton(
                                    onPressed: drink,
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Image(
                                            image: new AssetImage('assets/drink.png'), height: 70.0, width: 70.0,
                                          ),
                                          new Text("마실거리", style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),),
                                      ],
                                    ), color: Colors.white, 
                                  ),
                                  width: 120.0, height: 120.0,
                                ),
                          ],
                        ),
                    ], mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  
                  new Row(
                    children: <Widget>[
                        new Column(
                          children: <Widget>[
                                new Container(
                                  child: new RaisedButton(
                                    onPressed: active,
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Image(
                                            image: new AssetImage('assets/activities.png'), height: 70.0, width: 70.0,
                                          ),
                                          new Text("놀거리", style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),),
                                      ],
                                    ), color: Colors.white, 
                                  ),
                                  width: 120.0, height: 120.0,
                                ),
                          ],
                        ),
                          new Column(
                          children: <Widget>[
                                new Container(
                                  child: new RaisedButton(
                                    onPressed: etc,
                                      child: new Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          new Image(
                                            image: new AssetImage('assets/etc.png'), height: 70.0, width: 70.0,
                                          ),
                                          new Text("편의거리", style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),),
                                      ],
                                    ), color: Colors.white, 
                                  ),
                                  width: 120.0, height: 120.0,
                                ),
                          ],
                        ),
                    ], mainAxisAlignment: MainAxisAlignment.center
                  ),

                ],
              )
            ],
          ), 
        ),
      ),
    );
  }
}