import 'package:flutter/material.dart';
import 'package:monefy_app/Workplaces/add_workplaces.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> dynamicWidgets = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Welcome {name}', // You might want to replace this with the actual user's name
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 10, top: 20),
                child: Text(
                  'Choose a workplace',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.start,
                ),
              ),
              Column(
                children: [
                  ...dynamicWidgets,
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(172, 72, 226, 229), ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddWorkplace(),
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
                          'Add a workplace',
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
        ],
      ),
    );
  }
}
