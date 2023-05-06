import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'car_data.dart';

class Data with ChangeNotifier {
  List<CarData> carData = [];

  Future<void> fetchData() async {
    //INI OK
    String url = "https://aplysit.com/00_FLUTTER/1320003/car.php";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List extractData = (jsonDecode(response.body));
      for (var data in extractData) {
        carData.add(
          CarData(
              manufacturer: data['manufacturer'],
              model: data['model'],
              year: data['year'],
              color: data['color'],
              kilometer: data['kilometer'],
              price: data['price'],
              fueltype: data['fueltype'],
              transmission: data['transmission'],
              bodystyle: data['bodystyle'],
              vin: data['vin']),
        );
      }
    }
  }
}
