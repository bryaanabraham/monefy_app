import 'package:flutter/material.dart';
import 'package:monefy_app/home_page.dart';

class Workplaces extends StatelessWidget {
  final IconData address;
  final String workplace;
  final String contact;
  const Workplaces(
      {super.key,
      required this.address,
      required this.workplace,
      required this.contact});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomePage()));
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 230, 78, 1),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
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
                Text(
                  '{workplace}',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
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
