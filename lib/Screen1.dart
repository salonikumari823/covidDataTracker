import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Loading1.dart';

class Auth extends StatefulWidget {



  Auth();
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {


  _AuthState();
  var radiusc= BorderRadius.circular(10);
  Color _ccolor=Colors.grey;

  bool changedc=false;
  dynamic _iconc= Icon(Icons.masks_outlined,
    color: Colors.black,
  );
  var radius= BorderRadius.circular(10);
  Color _color=Colors.grey;
  bool changed=false;
  dynamic _icon= Icon(Icons.medical_services,
    color: Colors.black,
  );
  void changec() {
    if (changedc == false) {
      this.radiusc = BorderRadius.circular(100);
      this._ccolor = Colors.lightGreen;
      this._iconc = Icon(Icons.verified_user_outlined,
        color: Colors.white,);
      changedc = true;
    }
    else{
      radiusc= BorderRadius.circular(10);
      _ccolor=Colors.grey;

      changedc=false;
      _iconc= Icon(Icons.masks_outlined,
        color: Colors.black,);
      changedc=false;

    }
  }
  void changee() {
    if (changed == false) {
      this.radius = BorderRadius.circular(100);
      this._color = Colors.lightGreen;
      this._icon = Icon(Icons.verified_user_outlined,
        color: Colors.white,);
      changed = true;
    }
    else{
      radius= BorderRadius.circular(10);
      _color=Colors.grey;

      changed=false;
      _icon= Icon(Icons.medical_services,
        color: Colors.black,);
      changed=false;

    }
  }
  @override
  Widget build(BuildContext context) {
var area=MediaQuery.of(context).size.width*MediaQuery.of(context).size.height;


    return Scaffold(

      body:  Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(image: AssetImage('images/back.jpg'),
              fit: BoxFit.fill,

            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),

            child: Column(


              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                Text("Get Updates!!!🚑",

                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: MediaQuery.of(context).size.width*0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,

                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height*0.08),
                Center(
                  child: Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage('images/login.png'),
                      width:  MediaQuery.of(context).size.width*0.9,
                      height:MediaQuery.of(context).size.width*0.4 ,




                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.2),
                GestureDetector(


                    child:  AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInCirc,
                      width:MediaQuery.of(context).size.width*0.75 ,
                      height: MediaQuery.of(context).size.height*0.08,

                      decoration: BoxDecoration(
                        color: _color,
                        borderRadius: radius,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15,0,0,0),
                        child: Row(
                          children: [
                            _icon,
                            SizedBox(width:MediaQuery.of(context).size.width*0.05),
                            Text(
                                "CovidStats",

                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height*0.05,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        changee();

                      }


                      );
                      setState(() async{
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Cases()));

                      });
                    }


                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.06),





























              ],
            ),
          ),
        ],
      ),

    );

  }
}