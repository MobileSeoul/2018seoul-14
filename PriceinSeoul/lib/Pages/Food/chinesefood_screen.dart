import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:priceinseoul/Pages/Model/method.dart';
import 'package:priceinseoul/Pages/Model/properties.dart';

class China extends StatefulWidget{
  @override
  ChinaState createState() => new ChinaState();
}

class ChinaState extends State<China>{

  ChinaState() {
    searchBar = new SearchBar(
      inBar: false,
      setState: setState,
      onSubmitted: submit,
      buildDefaultAppBar: buildAppBar
    );
    initSearch();
  }

 @override
 Widget build(BuildContext context){
      TITLE = "중식";
       return new Scaffold(
        appBar: searchBar.build(context),
         body: new Container(
           child: new Center(
             child: new FutureBuilder(
              future: rootBundle.loadString(jsonuri),
               builder: (context, snapshot){
                 
                  getmydata(snapshot);

                  if(MYDATA != null)
                  {
                    for(var _items in MYDATA)
                    {
                      if(_items['induty_desc'] == "중식")
                      {
                          MYDATA_.add(_items);
                      }
                    }
                  }
                  
                                  
                 return new ListView.builder(
                   itemBuilder: (BuildContext context, int index){
                     return new Card(
                       child: ButtonTheme(
                        padding: new EdgeInsets.all(0.0),
                            child: new RaisedButton(
                              onPressed: () => gettargetinfo(MYDATA_[index], context),
                                    child: new Container(
                                    color: new Color(4294309364),
                                    padding: new EdgeInsets.all(10.0),
                                    child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        new Text('${MYDATA_[index]['bssh_nm']}' + '(${MYDATA_[index]['prdlst_desc']})',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
                                        new Text('',
                                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10.0)),
                                        new Text('가격 : ${MYDATA_[index]['pc'].toString()}',
                                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10.0)),
                                        new Text('주소 : ${MYDATA_[index]['adres_cn2']}',
                                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10.0)),
                                      ],
                                    ),
                              ),
                            ),
                       )
                     );
                   },
                   itemCount: MYDATA_ == null ? 0 : MYDATA_.length,
                 );
               },
             ),
           ),
         ),
       );
     }
}


