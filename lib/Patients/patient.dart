import 'dart:math';
import 'package:flutter/material.dart';
import 'package:monefy_app/Patients/add_patients.dart';

Color getRandomColor() {
  Random random = Random();
  int red = random.nextInt(256); // 0 to 255
  int green = random.nextInt(256); // 0 to 255
  int blue = random.nextInt(256); // 0 to 255
  red = (red + 200) % 256;
  green = (green + 200) % 256;
  blue = (blue + 200) % 256;

  return Color.fromARGB(255, red, green, blue);
}

class PatientPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildWorkplaceWidget(context);
  }

  Widget _buildWorkplaceWidget(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          // Navigate to the HomePage with an empty dynamicWidgets list
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPatient(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color:getRandomColor(),
              borderRadius: BorderRadius.circular(20),
            ),
            child:const  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.health_and_safety,
                    size: 35,
                  ),
                ),
                // Text(
                //   workplace,
                //   style: const TextStyle(
                //     fontSize: 26,
                //     fontWeight: FontWeight.w700,
                //   ),
                //   overflow: TextOverflow.ellipsis,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
