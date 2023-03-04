import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wetherapp/model/weathermodel.dart';
import 'package:wetherapp/provide/weatherprovider.dart';

class homepage extends StatelessWidget {
   homepage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('weather app'),
        actions: [
          IconButton(onPressed: (){
              Navigator.of(context).pushNamed('/search');
          }, icon: const Icon(Icons.search)),
        ],
      ),
      body: Provider.of<weatherprovider>(context).weatherdata ==null? Center(
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
        color: Colors.orange,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
    Spacer(flex: 3,),
   Text('cairo',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

             
   Text(' updata  23/2/2024',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
 Spacer(),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
     Container(
      height: 100,
      child: Image.asset('asset/clouds.png')),


     Text('30',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

     Column(children: [
               
   Text('mac  32',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

             
   Text('min 20',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


     ]),

             
   

    ],),

              Spacer(),
   Text('clear',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


     Spacer(flex: 5,),
      ]),


      ),
    );
  }
}
