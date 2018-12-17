import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/Modal.dart';

import 'dart:convert';
import 'package:xml/xml.dart' as xml;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

double _x = 0.0;


class Detail extends StatefulWidget{

  double p_x;
  double p_y;
  // List<Map> _item;
  Map _item;

  // final double point_y;
  Detail(this.p_x, this.p_y, this._item);

  @override
  DetailState createState() => new DetailState(p_x,p_y,_item);

}


class DetailState extends State<Detail>{

  double p_x;
  double p_y;

  Map _item;
  DetailState(this.p_x, this.p_y, this._item,);

  // Modal modal = new Modal();
  final String link = "https://maps.googleapis.com/maps/api/geocode/xml?address=" + "오현로" + "&key=AIzaSyB9v1Y5sXuHXBkGSg4rpbrmRdHxflnQ_HA";

  Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        // title: new Text("맵 테스트"),
        title: new Text(this._item["bssh_nm"]),
      ),
      // body: getdate(),
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
              // new MarkerLayerOptions(
              //   markers: [
              //     new Marker(
              //       width: 45.0,
              //       height: 45.0,
              //       point: new LatLng(p_x, p_y),
              //       builder: (context) => new Container(
              //         child: IconButton(
              //           icon: Icon(Icons.location_on),
              //           color: Colors.red,
              //           iconSize: 25.0,
              //           onPressed: () => modal.MainBottomSheet(context, this._item),
              //         ),
              //       )
              //     )
              //   ]
              // )
            ],
          ),
          // floatingActionButton: new FloatingActionButton(
          //   onPressed: () => modal.MainBottomSheet(context, this._item),
          //   child: new Text("상세내용", style: TextStyle(fontSize: 12.0),),
          // ),
    );
  }
}
