import 'package:flutter/material.dart';
import 'package:priceinseoul/Pages/detail/mappage.dart';
import 'package:priceinseoul/Pages/Model/properties.dart';
import 'dart:math' as Math;

class Detail_Test extends StatefulWidget{

  @override
  Detail_TestState createState() => new Detail_TestState();
}

class Detail_TestState extends State<Detail_Test>{

  String distance = "";

  void onclick()
  {
    setState(() async{
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mappage(TAR_LAT, TAR_LNG))
      );
    });
  }

  @override
  initState(){
      double EARTH_R, Rad, radLat1, radLat2, radDist; 
      double dist, ret;

      EARTH_R = 6371000.0;
      Rad = Math.pi/180;
      radLat1 = Rad * MY_LAT;
      radLat2 = Rad * TAR_LAT;
      radDist = Rad * (MY_LNG - TAR_LNG);
      
      dist = Math.sin(radLat1) * Math.sin(radLat2);
      dist = dist + Math.cos(radLat1) * Math.cos(radLat2) * Math.cos(radDist);
      ret = EARTH_R * Math.acos(dist);

      double rslt = ret / 1000;
      distance = rslt.toStringAsFixed(3) + " km";
      if(rslt < 1) distance = ret.toStringAsFixed(3) +" m";
      super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: 
            new ListView(
              children: <Widget>[
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                   onPressed: onclick,
                   child: 
                    new Image.network("https://maps.googleapis.com/maps/api/staticmap?center=" + TAR_LAT.toString() + "," + TAR_LNG.toString() + "&zoom=18&size=600x400&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C" + TAR_LAT.toString() + "," + TAR_LNG.toString() + "&key=AIzaSyB9v1Y5sXuHXBkGSg4rpbrmRdHxflnQ_HA", ),
                ),

              new Container(
                        color: Color(0xFF63A945),
                        padding: new EdgeInsets.fromLTRB(15.0,15.0,0.0,15.0),
                        child: new Text(TAR_INFO["bssh_nm"], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),textAlign: TextAlign.start),
                      ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
              new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[

                        ],
                      ),
                      new Row(
                        children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.fromLTRB(15.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: new Icon(Icons.location_on, color: Colors.black26, size: 20.0,),
                            ),
                        new Container(
                            padding: new EdgeInsets.fromLTRB(10.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: 
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,5.0),
                                        width: 300.0,
                                        child: new Text("위치", style: TextStyle(color: const Color(0xFF63A945), fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                      )
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        width: 300.0,
                                        child: new Text(TAR_INFO["adres_cn2"], style: TextStyle(fontSize: 10.0, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      )
                                  ],
                                )
                              ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
              new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[

                        ],
                      ),
                      new Row(
                        children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.fromLTRB(15.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: new Icon(Icons.call, color: Colors.black26, size: 20.0,),
                            ),
                        new Container(
                            padding: new EdgeInsets.fromLTRB(10.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: 
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,5.0),
                                        width: 300.0,
                                        child: new Text("전화번호", style: TextStyle(color: const Color(0xFF63A945), fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                      )
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        width: 300.0,
                                        child: new Text(TAR_INFO["tlphon_no_cn"] == null ? "미확인" : TAR_INFO["tlphon_no_cn"], style: TextStyle(fontSize: 10.0, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      )
                                  ],
                                )
                              ],
                        ),
                      ),
                        ],
                      )
                      
                    ],
                  ),
                ],
              ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
              new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[

                        ],
                      ),
                      new Row(
                        children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.fromLTRB(15.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: new Icon(Icons.assignment_ind, color: Colors.black26, size: 20.0,),
                            ),
                        new Container(
                            padding: new EdgeInsets.fromLTRB(10.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: 
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,5.0),
                                        width: 300.0,
                                        child: new Text("품목", style: TextStyle(color: const Color(0xFF63A945), fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                      )
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        width: 300.0,
                                        child: new Text(TAR_INFO["prdlst_desc"], style: TextStyle(fontSize: 10.0, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      )
                                  ],
                                )
                              ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
              new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[

                        ],
                      ),
                      new Row(
                        children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.fromLTRB(15.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: new Icon(Icons.atm, color: Colors.black26, size: 20.0,),
                            ),
                        new Container(
                            padding: new EdgeInsets.fromLTRB(10.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: 
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,5.0),
                                        width: 300.0,
                                        child: new Text("가격", style: TextStyle(color: const Color(0xFF63A945), fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                      )
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        width: 300.0,
                                        child: new Text(TAR_INFO["pc"], style: TextStyle(fontSize: 10.0, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      )
                                  ],
                                )
                              ],
                        ),
                      ),
                        ],
                      )
                      
                    ],
                  ),
                ],
              ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
                            new Row(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[

                        ],
                      ),
                      new Row(
                        children: <Widget>[
                        new Container(
                            padding: new EdgeInsets.fromLTRB(15.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: new Icon(Icons.assignment_ind, color: Colors.black26, size: 20.0,),
                            ),
                        new Container(
                            padding: new EdgeInsets.fromLTRB(10.0,10.0,0.0,5.0),
                            // width: 300.0,
                            child: 
                            new Column(
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        padding: new EdgeInsets.fromLTRB(0.0,0.0,0.0,5.0),
                                        width: 300.0,
                                        child: new Text("거리", style: TextStyle(color: const Color(0xFF63A945), fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                      )
                                  ],
                                ),
                                new Row(
                                  children: <Widget>[
                                      new Container(
                                        width: 300.0,
                                        child: 
                                        new Text
                                        (
                                          distance, 
                                          style: TextStyle(fontSize: 10.0, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      )
                                  ],
                                )
                              ],
                        ),
                      ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              new Container(
              height: 0.8,
              color: Colors.black26.withOpacity(0.1),
              ),
              
              ],
            ),
      );
  }
}