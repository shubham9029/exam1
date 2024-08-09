import 'package:animation/screen/home/model/home_model.dart';
import 'package:animation/utils/api_helper.dart';
import 'package:flutter/cupertino.dart';

class HomeProvider with ChangeNotifier
{

  Future<HomeModel?>? model;
  HomeModel homeModel=HomeModel();

  Future<void> getData(String? search) async {
    APIHelper helper = APIHelper();
    model = helper.APICall(search!);

    model!.then(
          (value) {
        if (value !=null) {
          notifyListeners();
        }
      },
    );
  }
}