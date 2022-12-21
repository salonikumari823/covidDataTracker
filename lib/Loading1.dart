import 'package:covi/CallApi.dart';
import 'package:flutter/material.dart';

import 'CovidScreen.dart';
class Cases extends StatefulWidget {

  var data;
  var deaths;
  var confirmed;
  var Country;

  @override
  _CasesState createState() => _CasesState();
}

class _CasesState extends State<Cases> {
  @override
  var data1;
  var deaths;
  var confirmed;
var data2;




Future<dynamic> decode()async{
  data1= await CallApi().globalcall();
   deaths= data1["deaths"];
   confirmed=data1["confirmed"];




Navigator.push(context, MaterialPageRoute(builder: (context)=>Covid(

 deaths,
confirmed,
)));

}
  @override
  void initState() {
    // TODO: implement initState
   decode();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
 print(deaths);
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
