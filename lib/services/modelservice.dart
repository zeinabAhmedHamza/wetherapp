

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wetherapp/model/weathermodel.dart';



class Weatherservices{
String baseurl='http://api.weatherapi.com/v1';
String apikey='2f0f1e14154c4b94941184251231802';
Future <Weathermodel?>  getweather({required  String cityname}) async{
Weathermodel? weather ;
 try {
   Uri url = Uri.parse('$baseurl/forecast.json?key=$apikey&q=$cityname&days=7');

     http.Response response  = await http.get(url);
     Map <String, dynamic> data = jsonDecode(response.body);

     weather =Weathermodel.fromjeson(data);

 }catch(e){
  print(e);
 }
return weather;
}

}
