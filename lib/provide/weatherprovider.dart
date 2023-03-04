

import 'package:flutter/cupertino.dart';
import 'package:wetherapp/model/weathermodel.dart';

class weatherprovider  extends ChangeNotifier{

  Weathermodel? _weatherdata;

  set weatherdata(Weathermodel weather)
  {
   _weatherdata=weather;

   notifyListeners();
  }



}