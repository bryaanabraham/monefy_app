import 'package:flutter/material.dart';
import 'dart:math';
import 'package:monefy_app/Patients/patient_info.dart';

Color getRandomColor() {

Random random = Random();

  int red = random.nextInt(256);
  int green = random.nextInt(256);
  int blue = random.nextInt(256);

  double brightness = (red * 0.299 + green * 0.587 + blue * 0.114) / 255;

  if (brightness < 0.5) {
    brightness = brightness + 0.5;
  }
  red = red.clamp(0, 255);
  green = green.clamp(0, 255);
  blue = blue.clamp(0, 255);

  return Color.fromARGB(255, red, green, blue);
}

class PassPatientInfo extends StatefulWidget {
  final String Name;

  const PassPatientInfo({super.key, required this.Name});

  @override
  State<PassPatientInfo> createState() => _PassPatientInfoState();
}

class _PassPatientInfoState extends State<PassPatientInfo> {
  @override
  Widget build(BuildContext context) {
    return _buildPassPatientWdiget(context);
  }

  Widget _buildPassPatientWdiget(BuildContext context){
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PatientInfo()
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: getRandomColor(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.person,
                    size: 25,
                  ),
                ),
                Text(
                  widget.Name,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}