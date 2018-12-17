import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/Active/main_active.dart';
import 'package:priceinseoul/Pages/Drink/main_drink.dart';
import 'package:priceinseoul/Pages/Food/main_food.dart';
import 'package:priceinseoul/Pages/ETC/main_etc.dart';

class MainBody_Test extends StatefulWidget{
  @override
  MainBody_TestState createState() => new MainBody_TestState();
}

class MainBody_TestState extends State<MainBody_Test>{

String _url = "https://maps.googleapis.com/maps/api/staticmap?center=37.5356144%2C127.0836095&zoom=18&size=600x400&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C37.5356144%2C127.0836095&key=AIzaSyB9v1Y5sXuHXBkGSg4rpbrmRdHxflnQ_HA";

void active(int num)
   {
      setState(() {
        switch(num)
        {
          case(0) :
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodMain()));
          break;
          case(1) :
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrinkMain()));
          break;
          case(2) :
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActiveMain()));
          break;
          case(3) :
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EtcMain()));
          break;
        }
    });
   }

 @override
 Widget build(BuildContext context){
    return Scaffold(
      body: 
        new Container(
          decoration: 
               new BoxDecoration(
                color: Colors.white,
                image: new DecorationImage(
                  fit : BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  image: new AssetImage('assets/Seoul.JPG')
                ),
              ),
          padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
          child:
            new GridView.extent(
            maxCrossAxisExtent: 300.0,
            padding: const EdgeInsets.all(10.0),
            children: _buildGridTiles(4),
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.15,
            )
        ),
        );
        }
           List<Widget> _buildGridTiles(numberOfTiles) {
           List<String> name = new List<String>();
           name..add("먹거리")..add("마실거리")..add("놀거리")..add("편의거리");
           List<GestureDetector> containers = new List<GestureDetector>.generate(numberOfTiles,
           (int index){
             final imageName = 'assets/image${index + 1}.JPG';
             return new GestureDetector(
              onTap: (){ active(index);  },
              child: new Column(
                children: <Widget>[
                    new Container(
                      width: 200.0,
                      height: 110.0,
                    child: new Container(
                    margin: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                  ),
                  decoration: 
                  new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 0.5),
                    borderRadius: new BorderRadius.vertical(top: const Radius.circular(8.0)),
                    color: const Color(0xff7c94b6),
                    image: new DecorationImage(
                      fit : BoxFit.cover,
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      image: new AssetImage(imageName)
                    ),
                  ),
                  ),
                  new Container(
                    width: 200.0,
                    child: new Text(name[index], style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
                    decoration: 
                    new BoxDecoration(
                    border: new Border.all(color: Colors.black38, width: 0.5),
                    borderRadius: new BorderRadius.vertical(bottom:const Radius.circular(8.0)),
                    color: Colors.white.withOpacity(0.3)
                  ),
                  ),
                ],
              ),
             );
           }
           );
           return containers;
         }
        }


// class MainBody_Test extends StatefulWidget{
//   @override
//   MainBody_TestState createState() => new MainBody_TestState();
// }

// class MainBody_TestState extends State<MainBody_Test>{

// String _url = "https://maps.googleapis.com/maps/api/staticmap?center=37.5356144%2C127.0836095&zoom=18&size=600x400&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C37.5356144%2C127.0836095&key=AIzaSyB9v1Y5sXuHXBkGSg4rpbrmRdHxflnQ_HA";

// void active(int num)
//    {
//       setState(() {
//         switch(num)
//         {
//           case(0) :
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodMain()));
//           break;
//           case(1) :
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrinkMain()));
//           break;
//           case(2) :
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => ActiveMain()));
//           break;
//           case(3) :
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => EtcMain()));
//           break;
//         }
//     });
//    }

//  @override
//  Widget build(BuildContext context){
//     return Scaffold(
//       body: 
//         new Container(
//           decoration: 
//                new BoxDecoration(
//                 color: Colors.white,
//                 image: new DecorationImage(
//                   fit : BoxFit.cover,
//                   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
//                   image: new AssetImage('assets/Seoul.JPG')
//                 ),
//               ),
//           padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
//           child:
//             new GridView.extent(
//             maxCrossAxisExtent: 200.0,
//             padding: const EdgeInsets.all(10.0),
//             children: _buildGridTiles(4),
//             crossAxisSpacing: 20.0,
//             mainAxisSpacing: 20.0,
//             childAspectRatio: 1.15,
//             )
//         ),
//         );
//         }
//            List<Widget> _buildGridTiles(numberOfTiles) {
//            List<String> name = new List<String>();
//            name..add("먹거리")..add("마실거리")..add("놀거리")..add("기타");
//            List<GestureDetector> containers = new List<GestureDetector>.generate(numberOfTiles,
//            (int index){
//              final imageName = 'assets/image${index + 1}.JPG';
//              return new GestureDetector(
//               onTap: (){ active(index);  },
//               child: new Column(
//                 children: <Widget>[
//                     new Container(
//                       width: 200.0,
//                       height: 110.0,
//                     child: new Container(
//                     margin: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
//                   ),
//                   decoration: 
//                   new BoxDecoration(
//                     border: new Border.all(color: Colors.black38, width: 0.5),
//                     borderRadius: new BorderRadius.vertical(top: const Radius.circular(8.0)),
//                     color: const Color(0xff7c94b6),
//                     image: new DecorationImage(
//                       fit : BoxFit.cover,
//                       colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
//                       image: new AssetImage(imageName)
//                     ),
//                   ),
//                   ),
//                   new Container(
//                     width: 200.0,
//                     child: new Text(name[index], style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center),
//                     decoration: 
//                     new BoxDecoration(
//                     border: new Border.all(color: Colors.black38, width: 0.5),
//                     borderRadius: new BorderRadius.vertical(bottom:const Radius.circular(8.0)),
//                     color: Colors.white.withOpacity(0.3)
//                   ),
//                   ),
//                 ],
//               ),
//              );
//            }
//            );
//            return containers;
//          }
//         }