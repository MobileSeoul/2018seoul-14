import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Mappage extends StatefulWidget{

  double p_x;
  double p_y;

  Mappage(this.p_x, this.p_y);

  @override
  MappageState createState() => new MappageState(p_x,p_y);
}


class MappageState extends State<Mappage>{

  double p_x;
  double p_y;

  MappageState(this.p_x, this.p_y);

  void test()
  {

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: 
            new FlutterMap(
            options: new MapOptions(
              center: new LatLng(p_x, p_y),
              zoom: 16.0,
              maxZoom: 20.0,
              minZoom: 10.0,
              
              // minZoom: 10.0
            ),
            layers: [
              new TileLayerOptions(
                urlTemplate: "http://mt1.google.com/vt/street=y&hl=kr&x={x}&y={y}&z={z}",
              ),
              new MarkerLayerOptions(
                markers: [
                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(p_x, p_y),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize: 25.0,
                        onPressed: test
                      ),
                    )
                  )
                ]
              )
            ],
          ),
    );
  }
}
