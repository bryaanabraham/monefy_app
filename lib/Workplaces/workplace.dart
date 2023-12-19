import 'dart:math';
import 'package:flutter/material.dart';
import 'package:monefy_app/Patients/patient.dart';

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

class AddWorkplaces extends StatefulWidget {
  final String workplace;
  final String address;
  final String contact;

  final String helpText = 'Need Help?';
  final String helpExpanded =
      "Incorporate the specified details according to the given instructions\n\nThe provided name is featured on the home screen.";

  const AddWorkplaces({
    Key? key,
    required this.workplace,
    required this.contact, required Null Function() onPressed, required this.address,
  }) : super(key: key);

  @override
  State<AddWorkplaces> createState() => _AddWorkplacesState();
}

class _AddWorkplacesState extends State<AddWorkplaces> {
  bool _isExpandeIntro = false;

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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PatientPage(workplace: widget.workplace, ailment: '', contact: '', treatment: '', payment: '',),
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
                    Icons.work,
                    size: 25,
                  ),
                ),
                Text(
                  widget.workplace,
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
