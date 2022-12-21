

import 'package:covi/Loading1.dart';
import 'package:covi/utils/covidContainers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoadingScreen2.dart';
class Covid extends StatefulWidget {

  var death;
  var confirmed;
Covid(this.death,this.confirmed);
  @override
  _CovidState createState() => _CovidState(this.death,this.confirmed);
}

class _CovidState extends State<Covid> {
  var death;
  var confirmed;
  var country;

  _CovidState(this.death,this.confirmed);
  @override
  Widget build(BuildContext context) {

    var area=MediaQuery.of(context).size.width*0.45*MediaQuery.of(context).size.height*0.28;
    return Scaffold(
      body: Stack(
        children: [
          Container(

            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end:Alignment.bottomCenter,
                    colors: [Colors.blueGrey,Colors.black12,]
                )
            ),

          ),

          Container(

            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0,MediaQuery.of(context).size.height*0.5 , 0, 0),

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70),topRight: Radius.circular(70))

            ),

          ),
          Container(
            height:  MediaQuery.of(context).size.height*0.1,

            width: MediaQuery.of(context).size.width*0.9,
            margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.04, MediaQuery.of(context).size.height*0.65, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.white,
                iconColor: Colors.white,
                labelStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.black,
                  )
                ),
                labelText: "Search By Country",

                border:OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
              )
              ),
              onChanged: (value){
                setState(() {
                  country=value;
                });
              },

            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(0,0,0,MediaQuery.of(context).size.height*0.1),
            child: Align(

              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Load(
                   country
                )));

              },
                child: Icon(
                  Icons.done,
                ),
                focusColor: Colors.black,
                splashColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.03,MediaQuery.of(context).size.height*0.08, 0, 0),
            child:Row(
              children: [
                container("deaths",death.toString()),
                SizedBox(width: MediaQuery.of(context).size.width*0.04,),
               container("Confirmed", confirmed)


              ],
            ),
          ),


        ],
      ),
    );

  }
}
