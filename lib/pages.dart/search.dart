import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wetherapp/model/weathermodel.dart';
import 'package:wetherapp/provide/weatherprovider.dart';
import 'package:wetherapp/services/modelservice.dart';

class search extends StatelessWidget {
 // const search({Key? key}) : super(key: key);
String? cityname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('saerch a city '),
      ),
      body:   Center(child:
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: TextField(
          onSubmitted: (data) async{
             cityname=data;

      Weatherservices services = Weatherservices();

   Weathermodel weather = await services.getweather(cityname: cityname!);

  Provider.of<weatherprovider>(context , listen: false).weatherdata=weather;

   Provider.of<weatherprovider>(context , listen: false).cityname=cityname;
  Navigator.pop(context);
            
          },
          style: const TextStyle(color: Colors.pink),
          decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(4)),
     borderSide: BorderSide(width: 1,color: Colors.purple),
   ),


         border:  OutlineInputBorder(

      borderSide:  BorderSide(color: Colors.black)
    ),
            contentPadding: EdgeInsets.symmetric(vertical: 35,horizontal: 30),
            label: Text('search'),
            suffixIcon: Icon(Icons.search),
            hintText: 'enter city name '),
      ),
       ),),
    );
  }
}


