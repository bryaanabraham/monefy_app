import 'package:flutter/material.dart';
import 'package:monefy_app/Workplaces/workplace.dart';

class PatientInfo extends StatefulWidget {
  const PatientInfo({Key? key}) : super(key: key);

  @override
  _PatientInfo createState() => _PatientInfo();
}

class _PatientInfo extends State<PatientInfo> {

  bool _isExpanded_pd = false;
  final String pd_Text = 'Amoumt';
  final String pd_Expanded ="{payment Amount}";

  bool _isExpanded_dt = false;
  final String dt_Text = 'History';
  final String dt_Expanded ="{payment history}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{patient name}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
        backgroundColor: const Color.fromARGB(255, 66, 227, 208),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20,top: 8),
                child: Text("Patient Details", style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),textAlign: TextAlign.left,),
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
                      pd_Text,
                      style: const TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(_isExpanded_pd
                        ? Icons.expand_less
                        : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        _isExpanded_pd = !_isExpanded_pd;
                      });
                    },
                  ),
                ),
              ),
              if (_isExpanded_pd)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  pd_Expanded,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
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
                      dt_Text,
                      style: const TextStyle(fontSize: 18),
                    ),
                    trailing: Icon(_isExpanded_dt
                        ? Icons.expand_less
                        : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        _isExpanded_dt = !_isExpanded_dt;
                      });
                    },
                  ),
                ),
              ),
              if (_isExpanded_dt)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  dt_Expanded,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
