import 'package:flutter/material.dart';

class StartUpPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                PageContent(
                  imagePath: "assets/Images/StartUp1.jpeg",
                  title: "Welcome Back",
                  font_size: 20,
                ),
                PageContent(
                  imagePath: "assets/Images/StartUp2.jpeg",
                  title: "Log in for an organized workplace finance",
                  font_size: 18,
                ),
                PageContent(
                  imagePath: "assets/Images/StartUp3.jpeg",
                  title: "Create an account and support us",
                  font_size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class PageContent extends StatelessWidget {
  final String imagePath;
  final String title;
  // ignore: non_constant_identifier_names
  final double font_size;

  const PageContent({
    required this.imagePath,
    required this.title,
    // ignore: non_constant_identifier_names
    required this.font_size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 30, bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: font_size,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    color: Color.fromARGB(255, 0, 0, 0),
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
