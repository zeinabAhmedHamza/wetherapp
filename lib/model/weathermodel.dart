






import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Weathermodel
{
 String data;
double temp;
double mintemp;
double maxtemp;
String weatherstate;

Weathermodel({
  required this.data ,
  required this.maxtemp ,
  required this.mintemp ,
  required this.temp ,
  required this.weatherstate ,
});

factory  Weathermodel.fromjeson( dynamic data)
{
var jesondata = data ['forecast']['forecastday'][0]['day'];
 return Weathermodel(
  data: data['location']['localtime'],
  maxtemp: jesondata['maxtemp_f'],
   mintemp: jesondata['mintemp_f'],
    temp: jesondata['avgtemp_c'], 
    weatherstate: jesondata['condition']['text']);
}

@override
  String toString() {
    
    return 'temp = $temp   mintemp = $mintemp  maxtemp = $maxtemp data = $data';
  }
   


   String  getimage(){
    if(weatherstate =='Clear'|| weatherstate=='Light Cloud'){
      return 'asset/sun.png';
    }
      else if(weatherstate=='Sleet' || weatherstate=='Snow'||weatherstate=='Hail'){
      return 'asset/cloudy.png';
   }

  else if(weatherstate=='Heavy Cloud'){
      return 'asset/rainy.png';
   }
     else if(weatherstate=='Light Rain' || weatherstate=='Heavy Rain'||weatherstate=='Showers'){
      return 'asset/clouds.png';
   }
     else if(weatherstate=='Thunderstorm' || weatherstate=='Thunder'){
      return 'asset/clouds.png';
   }
   else {
    return 'asset/clouds.png';
   }
   }


   
   MaterialColor  getcolor(){
    if(weatherstate =='Clear'|| weatherstate=='Light Cloud'){
      return Colors.orange;
    }
      else if(weatherstate=='Sleet' || weatherstate=='Snow'||weatherstate=='Hail'){
      return Colors.green;
   }

  else if(weatherstate=='Heavy Cloud'){
      return Colors.grey;
   }
     else if(weatherstate=='Light Rain' || weatherstate=='Heavy Rain'||weatherstate=='Showers'){
      return Colors.teal;
   }
     else if(weatherstate=='Thunderstorm' || weatherstate=='Thunder'){
      return Colors.lime;
   }
   else {
    return Colors.amber;

   }
  
   }



}
