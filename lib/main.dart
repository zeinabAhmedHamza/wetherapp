import 'package:flutter/material.dart';
import 'package:wetherapp/pages.dart/homepage.dart';
import 'package:wetherapp/pages.dart/search.dart';
import 'package:provider/provider.dart';
import 'package:wetherapp/provide/weatherprovider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (conttext){
        return weatherprovider() ; 
      },
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(

      
      theme: ThemeData(
        primarySwatch: Provider.of<weatherprovider>(context).weatherdata == null ?Colors.blue : 
         Provider.of<weatherprovider>(context).weatherdata!.getcolor(),
         ),

      
      debugShowCheckedModeBanner: false,
    
      initialRoute :  '/homepage' ,
      routes: {
        '/homepage':(context) =>  homepage(),
        '/search':(context) => search(),
      },
       
       
     
    );
  }
}
