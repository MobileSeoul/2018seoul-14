import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:priceinseoul/Pages/Model/properties.dart';
import 'package:http/http.dart' as http;
import 'package:priceinseoul/Pages/detail/detailpage_test.dart';
import 'package:xml/xml.dart' as xml;
import 'package:geolocator/geolocator.dart';
import 'package:priceinseoul/Pages/Modal.dart';


//현재 위치 가져오기
void getlocation() async {
  await Geolocator().getCurrentPosition(LocationAccuracy.high).then((onValue){
    MY_LAT = onValue.latitude;
    MY_LNG = onValue.longitude;
  });
}

//구글맵에 표시
void gettargetinfo(Map index, BuildContext context) async{

    if(response == null)
    {
        response = await http.get("https://maps.googleapis.com/maps/api/geocode/xml?address=" + index["adres_cn2"].toString().split("(").first + "&key=AIzaSyB9v1Y5sXuHXBkGSg4rpbrmRdHxflnQ_HA");
        var document = xml.parse(response.body);

        TAR_LAT = double.parse(document.findAllElements('lat').first.toString().replaceAll("<lat>", "").replaceAll("</lat>", ""));
        TAR_LNG = double.parse(document.findAllElements('lng').first.toString().replaceAll("<lng>", "").replaceAll("</lng>", ""));
        TAR_INFO = index;
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail_Test()));

        response = null;
    }
      
}

//검색 버튼을 눌렀을때
  TextFieldSubmitCallback submit(String text)
  {
    searchText = text;
    jsonuri = "";
    _simulateNetworkRequest();
    jsonuri = "load_json/information.json";
    _simulateNetworkRequest();
  }

//검색 결과 데이터
  Future<String> _simulateNetworkRequest() {
    return rootBundle.loadString(jsonuri);
  }
  
//Json Data 호출 및 조회
  void getmydata(AsyncSnapshot snapshot){
    MYDATA_ = new List<Map>();
      var DATA = json.decode(snapshot.data.toString());
      if(DATA != null)
      {
        MYDATA = new List<Map>();

        for (var _items in DATA) 
        {
          if( _items['bssh_nm'].toString().contains(searchText) || _items['prdlst_desc'].toString().contains(searchText) ||_items['adres_cn2'].toString().contains(searchText))
          {
            if(_items['adres_cn2'] != null)
            {
              if(_items['pc'] == null)
              {
                _items['pc'] = "미확인";
              }
              else
              {
                _items['pc'] = _items['pc'].toString() + "원";
              }
              MYDATA.add(_items);
            }
          }
        }

        //가격 순으로 조회하기
        // for (var _items in DATA) 
        // {
        //   if( _items['bssh_nm'].toString().contains(searchText) || _items['prdlst_desc'].toString().contains(searchText) ||_items['adres_cn2'].toString().contains(searchText))
        //   {
        //     if(_items['adres_cn2'] != null)
        //     {
        //       if(_items['pc'] == null)
        //       {
        //         _items['pc'] = 99999999;
        //       }
        //       MYDATA.add(_items);
        //     }
        //   }
        // }
        //MYDATA.sort((a,b) => double.parse(a['pc'].toString()).compareTo(double.parse(b['pc'].toString())));
      }
  }

//공통 Appbar 설정
  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      title: new Text(TITLE),
      backgroundColor: Color(0xFF63A945),
      //actions: [searchBar.getSearchAction(context), IconButton(icon: Icon(Icons.settings),onPressed: () => Bottom())], 
      actions: [searchBar.getSearchAction(context),], 
    );
  }

  void initSearch()
  {
    searchText = "";
  }
