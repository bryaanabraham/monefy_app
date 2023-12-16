import 'package:flutter/material.dart';
import 'package:monefy_app/Workplaces/add_workplace.dart';

class HomePage extends StatelessWidget {
  final List<Widget> dynamicWidgets;

  const HomePage({Key? key, required this.dynamicWidgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  ...dynamicWidgets, // Display the list of dynamic widgets
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddWorkplace()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 86,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(172, 72, 226, 229),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                ),
                              ),
                              Text(
                                'Add a workplace',
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w700),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
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
