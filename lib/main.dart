import 'package:flutter/material.dart';
import 'package:wetherapp/pages.dart/homepage.dart';
import 'package:wetherapp/pages.dart/search.dart';
import 'package:provider/provider.dart';
import 'package:wetherapp/provide/weatherprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Provider(
      create: (conttext){
        return weatherprovider() ; 
      },
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
      
        initialRoute :  '/homepage' ,
        routes: {
          '/homepage':(context) =>  homepage(),
          '/search':(context) => search(),
        },
         
         
       
      ),
    );
  }
}
