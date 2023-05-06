import 'package:car_app_info/provider/data.dart';
import 'package:car_app_info/provider/car_data.dart';
import 'package:flutter/material.dart';

class DetailCar extends StatelessWidget {
  DetailCar({super.key, required this.car});

  CarData car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(title: Text(car.model!)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text("Car Details"),
            SizedBox(
              height: 5,
            ),
            Text(
              car.model!,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RowGrid1(
              data1: car.manufacturer!,
              descData1: "Manufacturer",
            ),
            RowGrid3(
              data1: car.year!,
              data2: car.kilometer!,
              data3: car.color!,
              descData1: "Year",
              descData2: "Kilometer",
              descData3: "Color",
            ),
            RowGrid2(
              data1: car.fueltype!,
              data2: car.transmission!,
              descData1: "Fuel Type",
              descData2: "Transmission",
            ),
            RowGrid1(
              data1: car.price!,
              descData1: "Price",
            ),
            RowGrid1(
              data1: car.vin!,
              descData1: "VIN",
            ),
          ],
        ),
      ),
    );
  }
}

class RowGrid3 extends StatelessWidget {
  RowGrid3({
    super.key,
    required this.data1,
    required this.data2,
    required this.data3,
    required this.descData1,
    required this.descData2,
    required this.descData3,
  });

  String data1;
  String data2;
  String data3;
  String descData1;
  String descData2;
  String descData3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data2,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData2)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data3,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData3)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowGrid2 extends StatelessWidget {
  RowGrid2({
    super.key,
    required this.data1,
    required this.data2,
    required this.descData1,
    required this.descData2,
  });

  String data1;
  String data2;
  String descData1;
  String descData2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data2,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData2)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowGrid1 extends StatelessWidget {
  RowGrid1({
    super.key,
    required this.data1,
    required this.descData1,
  });
  String data1;
  String descData1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    data1,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(descData1)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
