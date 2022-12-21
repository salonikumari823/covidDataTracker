import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class CallApi{

Future<dynamic> globalcall()async{
    var uri=Uri.https("covid-19-coronavirus-statistics.p.rapidapi.com","/v1/total");
    final Response=await http.get(uri, headers: {
      'x-rapidapi-host': "covid-19-coronavirus-statistics.p.rapidapi.com",
      'x-rapidapi-key': "80993ad235msha35c6f295a22308p1d9c3djsnfca854cdee30",
      'useQueryString': "true",
    }
    );

return jsonDecode(Response.body)["data"];




  }
Future<dynamic> countrycall(var Country)async{
  Country =Country[0].toUpperCase() + Country.substring(1);
  print(Country);
  var uri=Uri.https( "covid-19-coronavirus-statistics.p.rapidapi.com","/v1/stats",{"country": Country.toString()});
  final Response=await http.get(uri, headers: {
    'x-rapidapi-host': "covid-19-coronavirus-statistics.p.rapidapi.com",
    'x-rapidapi-key': "80993ad235msha35c6f295a22308p1d9c3djsnfca854cdee30",

  }
  );

  return jsonDecode(Response.body)["data"]["covid19Stats"];




}




}