import 'dart:convert';

import 'package:animation/screen/home/model/home_model.dart';
import 'package:http/http.dart'as http;

class APIHelper
{
  Future<HomeModel?> APICall(String search)
  async {
    String link="https://www.omdbapi.com/?i=tt3896198&t=$search&apikey=469c11bf";

    var ress=await http.get(Uri.parse(link));

    if(ress.statusCode==200)
      {
        var json=jsonDecode(ress.body);
        HomeModel model=HomeModel.fromJson(json);
        return model;
      }
    return null;
  }
}