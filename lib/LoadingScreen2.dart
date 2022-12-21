import 'package:covi/CountryCases.dart';
import 'package:flutter/material.dart';
import 'package:covi/CallApi.dart';


import 'CovidScreen.dart';
class Load extends StatefulWidget {


  var deaths;
  var confirmed;
var Country;
  Load(this.Country);

  @override
  _LoadState createState() => _LoadState(this.Country);
}

class _LoadState extends State<Load> {

  @override

  var deaths;
  var confirmed;
  var data2;
var Country;
  _LoadState(this.Country);
 


  Future<dynamic> decode()async{
   print(Country);
    print("passed in callapi");
    data2= await CallApi().countrycall(Country);






    Navigator.push(context, MaterialPageRoute(builder: (context)=>CountryCases(
      data2
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
