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

class PatientPage extends StatefulWidget {
  final String workplace;
  final String ailment;
  final String contact;
  final String treatment;
  final String payment;
  const PatientPage({
    Key? key,
    required this.workplace, required this.ailment, required this.contact, required this.treatment, required this.payment,}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  List<Widget> dynamicWidgets = [];
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
        title: Text(widget.workplace),
      ),
      body: _buildPatientWidget(context),
    );
  }

  Widget _buildPatientWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          Column(
                  children: [
                    ...dynamicWidgets,
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 227, 149, 66),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddPatient(),
                            ),
                          ).then((newWorkplace) {
                            if (newWorkplace != null) {
                              setState(() {
                                dynamicWidgets.add(newWorkplace);
                              });
                            }
                          });
                        },  child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Add a Patient',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
