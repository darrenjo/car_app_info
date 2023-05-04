import 'package:car_app_info/screen/car_detail.dart';
import 'package:flutter/material.dart';
import '../provider/car_data.dart';

// ignore: must_be_immutable
class CarItem extends StatelessWidget {
  CarItem({super.key, required this.dataCar});
  CarData dataCar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCar(
              car: dataCar,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataCar.manufacturer!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              dataCar.model!,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(dataCar.year!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red))
          ],
        ),
      ),
    );
  }
}
