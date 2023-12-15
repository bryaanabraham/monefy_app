import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:monefy_app/Login/login_screen.dart';

class StartUpPage extends StatefulWidget {
  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  final PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page.toDouble();
                  });
                },
                children: const [
                  PageContent(
                    imagePath: "assets/Images/StartUp1.jpeg",
                    title: "Welcome Back",
                    font_size: 34,
                  ),
                  PageContent(
                    imagePath: "assets/Images/StartUp2.jpeg",
                    title: "Log in for an organized workplace finance",
                    font_size: 26,
                  ),
                  PageContent(
                    imagePath: "assets/Images/StartUp3.jpeg",
                    title: "Create an account and support us",
                    font_size: 26,
                  ),
                ],
              ),
            ),
            DotsIndicator(
              dotsCount: 3, // Number of dots
              position: _currentPage,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(16.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                activeColor: Colors.black
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                        color: const Color.fromARGB(201, 255, 255, 255),
                        elevation: 1,
                        onPressed: () { 
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LoginScreen()));
                         },
                        child: const Padding(
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
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: const Color.fromARGB(255, 0, 0, 0),
                        elevation: 2,
                        onPressed: () { 
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const LoginScreen()));
                         },
                        child: const Padding(
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
                  ),
                ],
              ),
            ),
          ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class PageContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final double font_size;

  const PageContent({
    required this.imagePath,
    required this.title,
    required this.font_size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: font_size,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left, // Align text to the left
              ),
            ),
          ),
        ],
      ),
    );
  }
}