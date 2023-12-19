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
  final String workplace;
  final String ailment;
  final String contact;
  final String treatment;
  final String payment;
  const PatientPage({
    Key? key,
    required this.workplace, required this.ailment, required this.contact, required this.treatment, required this.payment,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(workplace),
      ),
      body: _buildWorkplaceWidget(context),
    );
  }

  Widget _buildWorkplaceWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25, bottom: 10, top: 20),
          child: Text(
            'Select a Patient',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddPatient(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 86,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 227, 149, 66),
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.add,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Add Patient",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
