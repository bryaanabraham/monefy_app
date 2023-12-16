import 'package:flutter/material.dart';
import 'package:monefy_app/home_page.dart';

class Workplaces extends StatelessWidget {
  final String workplace;

  const Workplaces({
    Key? key,
    required this.workplace,
  }) : super(key: key);

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
              builder: (context) => const HomePage(dynamicWidgets: []),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 230, 78, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.health_and_safety,
                    size: 35,
                  ),
                ),
                Text(
                  workplace,
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
