import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wetherapp/model/weathermodel.dart';
import 'package:wetherapp/provide/weatherprovider.dart';

class homepage extends StatelessWidget {
   homepage({Key? key}) : super(key: key);


Weathermodel? weatherdata;
  @override
  Widget build(BuildContext context) {

         weatherdata = Provider.of<weatherprovider>(context).weatherdata;
    return Scaffold(
      appBar: AppBar(
        title:const Text('weather app'),

        actions: [
          IconButton(onPressed: (){
              Navigator.of(context).pushNamed('/search');
          }, icon: const Icon(Icons.search)),
        ],
      ),
      body: weatherdata ==null? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
          Text(
            'there is no weather   start',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          Text(
            'searching now  ',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ]),
      )   :   Container(
       decoration:  BoxDecoration(

        gradient:LinearGradient(
          colors: [
        weatherdata!.getcolor(),
        
           weatherdata!.getcolor()[300]!,
      weatherdata!.getcolor()[100]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
        )
       ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
    const Spacer(flex: 3,),
   Text( Provider.of<weatherprovider>(context).cityname!,
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

             
   Text(weatherdata!.data,
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

 Spacer(),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
     Container(
      height: 100,
      child: Image.asset(weatherdata!.getimage())),


     Text( weatherdata!.temp.toInt().toString(),
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

     Column(children: [
               
   Text('maxtem : ${weatherdata!.maxtemp.toInt()}',
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

             
   Text( 'mintem : ${weatherdata!.mintemp.toInt()}',
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


     ]),

             
   

    ],),

              Spacer(),
   Text(  weatherdata!.weatherstate,
    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


     Spacer(flex: 5,),
      ]),


      ),
    );
  }
}
