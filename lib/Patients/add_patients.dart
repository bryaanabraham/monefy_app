import 'package:flutter/material.dart';
import 'package:monefy_app/Patients/pass_patient_info.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({Key? key}) : super(key: key);
  
  @override
  _AddPatient createState() => _AddPatient();
}

class _AddPatient extends State<AddPatient> {
  late TextEditingController nameController;
  late TextEditingController contactController;
  late TextEditingController ailmentController;
  late TextEditingController treatmentController;
  late TextEditingController paymentController;

  bool _isExpandeIntro = false;
  final String HelpText = 'Need Help?';
  final String HelpExpanded =
      "Incorporate the specified details according to the given instructions\n\nThe provided name is featured on the home screen.";

  String name = '';
  String contact = '';
  String ailment = ' ';
  String treatment = ' ';
  String payment = ' ';


  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    contactController = TextEditingController();
    ailmentController = TextEditingController();
    treatmentController = TextEditingController();
    paymentController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    contactController.dispose();
    ailmentController.dispose();
    treatmentController.dispose();
    paymentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 227, 149, 66),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Add a place of Work',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Patient name',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(controller: nameController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter here',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Contact Information: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(controller: contactController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter here',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Ailment: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(controller: ailmentController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter here',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Treatment: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(controller: treatmentController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter here',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Payment: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  color: const Color.fromARGB(255, 243, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(controller: paymentController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter here',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 99, 99, 99),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  name = nameController.text;
                  contact = contactController.text;
                  ailment = ailmentController.text;
                  treatment = treatmentController.text;
                  payment = paymentController.text;
                  PassPatientInfo newPatients = PassPatientInfo(Name: name);
                  Navigator.pop(context, newPatients);
                   MaterialPageRoute(
                          builder: (context) => PassPatientInfo(Name: name),
                        );
                  
                },
                child: const Text(
                  'Update',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0.3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      HelpText,
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: Icon(_isExpandeIntro
                        ? Icons.expand_less
                        : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        _isExpandeIntro = !_isExpandeIntro;
                      });
                    },
                  ),
                ),
              ),
              if (_isExpandeIntro)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    HelpExpanded,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
