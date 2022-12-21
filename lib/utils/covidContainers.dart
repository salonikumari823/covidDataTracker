import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  class container extends StatelessWidget {
    var str;
    var cases;

 container(this.str,this.cases);

    @override
    Widget build(BuildContext context) {


      return Container(
        width: MediaQuery.of(context).size.width*0.45,
        height: MediaQuery.of(context).size.height*0.28,
        margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),

        ),
        child: Padding(
          padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.28*0.2),
          child: Column(
            children: [
              Text(str,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize:MediaQuery.of(context).size.width*0.45*0.1,
                    fontWeight: FontWeight.bold,


                  ),
                ),


              ),

              SizedBox(height:MediaQuery.of(context).size.height*0.28*0.15 ,),
              Text(cases.toString(),
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize:MediaQuery.of(context).size.width*0.45*0.09,
                    fontWeight: FontWeight.bold,

                  ),
                ),),
            ],
          ),
        ),
      );
    }
  }


