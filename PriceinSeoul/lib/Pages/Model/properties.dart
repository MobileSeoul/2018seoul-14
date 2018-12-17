import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:http/http.dart' as http;

  double MY_LNG = 0.0; //현재 위치
  double MY_LAT = 0.0; //현재 위치
  double TAR_LNG = 0.0; //타겟 위치
  double TAR_LAT = 0.0; //타겟 위치
  Map TAR_INFO; //타겟 정보
  String jsonuri = "load_json/information.json"; //Json 경로
  String searchText = ""; //검색
  // List<Map> MYDATA; //JsonData All
  // var MYDATA; //JsonData All
  List<Map> MYDATA; //JsonData All
  // var MYDATA; //JsonData All
  List<Map> MYDATA_; //JsonData Filter
  SearchBar searchBar; //SearchBar
  String TITLE = ""; // 타이틀
  http.Response response;
  
