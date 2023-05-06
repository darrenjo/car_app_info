import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/data.dart';
import '../widget/car_item.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Data dataCar = Provider.of<Data>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Car List"),
        ),
        body: FutureBuilder(
            future: dataCar.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    // ignore: prefer_const_constructors
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 5 / 3),
                    itemCount: dataCar.carData.length,
                    itemBuilder: (context, index) {
                      final data = dataCar.carData[index];
                      return CarItem(
                        dataCar: data,
                      );
                    },
                  ),
                );
              }
            }));
  }
}
