

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CallApi.dart';
import 'CovidScreen.dart';
import 'Screen1.dart';
class CountryCases extends StatefulWidget {
  var data;
  CountryCases(this.data);

  @override
  _CountryCasesState createState() => _CountryCasesState(this.data);
}

class _CountryCasesState extends State<CountryCases> {
  var data;

  _CountryCasesState(this.data);
  @override

  @override

  Widget build(BuildContext context) {
    print(data);
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("StateWise Cases",
        style: GoogleFonts.lato(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,



          ),
        ),
      ),
        backgroundColor: Colors.black,),
      body: Stack(
       children: [
         Container(
          child: ListView.builder(itemBuilder:(context,index){
            return getcard(index);
          },
  itemCount: data.length,
          ),
        ),
         Padding(
           padding: const EdgeInsets.fromLTRB(250, 400, 10, 0),
           child: FloatingActionButton(onPressed: ()async{
             var data1= await CallApi().globalcall();
            var  deaths= data1["deaths"];
            var  confirmed=data1["confirmed"];


             Get.offAll(Covid(deaths,confirmed));
           },
             child: Text("Back"),




           ),
         ),
    ],
      ),
    );
  }



 Widget getcard(index){
    return Card(
    color: Colors.black38,

      elevation: 3.0,
      borderOnForeground: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data[index]["province"].toString()
              ,style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.08,
                  fontWeight: FontWeight.bold,
                  color: Colors.black


                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("confirmed  ➤   "

                  ,style: GoogleFonts.lato(

                    textStyle: TextStyle(fontSize: 20,
                        color:Colors.white,

                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Text(data[index]["confirmed"].toString()
                  ,style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold


                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("deaths        ➤         "
                  ,style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 20
                        , fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(data[index]["deaths"].toString()
                  ,style: GoogleFonts.lato(
                    textStyle: TextStyle(fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
 }


  }







