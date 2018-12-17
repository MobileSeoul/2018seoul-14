import 'package:flutter/material.dart';

// class Modal{

class Bottom extends StatefulWidget
{
  @override
  BottomState createState() => new BottomState();
}

class BottomState extends State<Bottom>{

  bool _ischecked = true;

  BottomState()
  {
    build(context);
  }

  void onChanged(bool value)
  {
    setState(() 
    {
      print("test");
        // _ischecked = value;
    });
  }

  Widget build(BuildContext context){
    showBottomSheet(
      context: context,
      builder: (BuildContext context){
        return new Container(
          height: 300.0,
          child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Text('김밥'),
                            new Checkbox(value: _ischecked,  onChanged: (bool value){onChanged(value);}),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Text('설렁탕'),
                            new Checkbox(value: _ischecked,  onChanged: (bool value){onChanged(value);}),
                          ],
                        ),
                        new Divider(),
                  ],
                ),
        );
      }
    );
  }

  // MainBottomSheet(BuildContext context, Map _item){
  //   showBottomSheet(
  //   // showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context){
  //       return new Container(
  //         height: 300.0,
  //         child: new Column(
  //                 mainAxisSize: MainAxisSize.max,
  //                 children: <Widget>[
  //                       new Row(
  //                         children: <Widget>[
  //                           new Text('김빱'),
  //                           new Checkbox(value: _ischecked,  onChanged: (bool value){onChanged(value);}),
  //                         ],
  //                       ),
  //                       new Row(
  //                         children: <Widget>[
  //                           new Text('설렁탕'),
  //                           new Checkbox(value: true, onChanged: null,)
  //                         ],
  //                       ),

  //                       // SizedBox(child: _createTile(context, '상호명 : ' + _item['bssh_nm'].toString()), // bssh_nm
  //                       // height: 40.0,
  //                       // ),
  //                       // new Divider(),
  //                       // SizedBox(child: _createTile(context, '전화번호 : ' + _item['tlphon_no_cn'].toString()), //tlphon_no_cn
  //                       // height: 40.0,
  //                       // ),
  //                       // new Divider(), 
  //                       // SizedBox(child: _createTile(context, '주소 : ' + _item['adres_cn2'].toString()), //adres_cn2
  //                       // height: 40.0,
  //                       // ),
  //                       // new Divider(),
  //                       // SizedBox(child: _createTile(context, '메뉴 : ' + _item['prdlst_desc'].toString()), //prdlst_desc
  //                       // height: 40.0,
  //                       // ),
  //                       // new Divider(),
  //                       // SizedBox(child: _createTile(context, '가격 : ' + _item['pc'].toString()), //pc
  //                       // height: 40.0,
  //                       // ),
  //                       new Divider(),
  //                 ],
  //               ),
  //       );
  //     }
  //   );
  // }

  // ListTile _createTile(BuildContext context, String name, IconData icon){
    ListTile _createTile(BuildContext context, String name){
    return ListTile(
      title: Text(name, style: TextStyle(fontSize: 12.0),),
    );
  }
}