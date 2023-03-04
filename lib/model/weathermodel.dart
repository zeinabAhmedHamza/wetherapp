






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

}
