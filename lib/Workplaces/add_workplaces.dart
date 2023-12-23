import 'package:flutter/material.dart';
import 'package:monefy_app/Workplaces/workplace.dart';

class AddWorkplace extends StatefulWidget {
  const AddWorkplace({Key? key}) : super(key: key);

  @override
  _AddWorkplace createState() => _AddWorkplace();
}

class _AddWorkplace extends State<AddWorkplace> {
  late TextEditingController workplaceController;
  late TextEditingController addressController;
  late TextEditingController contactController;

  bool _isExpandeIntro = false;

  final String HelpText = 'Need Help?';
  final String HelpExpanded =
      "Incorporate the specified details according to the given instructions\n\nThe provided name is featured on the home screen.";

  String workplace = '';
  String address = '';
  String contact = '';

  @override
  void initState() {
    super.initState();
    workplaceController = TextEditingController();
    addressController = TextEditingController();
    contactController = TextEditingController();
  }

  @override
  void dispose() {
    workplaceController.dispose();
    addressController.dispose();
    contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 227, 208),
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
                    'Name of workplace',
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
                    child: TextFormField(controller: workplaceController,
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
                    'Address: ',
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
                    child: TextFormField(controller: addressController,
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
              ElevatedButton(
                onPressed: () {
                  workplace = workplaceController.text;
                  address = addressController.text;
                  contact = contactController.text;
                  
                  Workplaces newWorkplace = Workplaces(
                    workplace: workplace,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Workplaces(workplace: workplace, onPressed: () {}, address: address, contact: contact,),
                        ),
                      );
                    }, address: address, contact: contact,
                  );
                  Navigator.pop(context, newWorkplace);
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
