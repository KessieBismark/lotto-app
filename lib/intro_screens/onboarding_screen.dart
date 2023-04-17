import 'package:cashlotto_app/constants.dart';
import 'package:cashlotto_app/intro_screens/intro_page_1.dart';
import 'package:cashlotto_app/intro_screens/intro_page_2.dart';
import 'package:cashlotto_app/intro_screens/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../welcome/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page we are on
  final PageController _controller = PageController();

  bool onLastPage = false;
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          // dot indicator
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip

                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: kPrimaryLightColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                // next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          /// box.write("welcome", 1);

                          // if (box.read("userEmail") != null) {
                          //   emailController.text =
                          //       box.read("userEmail").toString();
                          // }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const WelcomeScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: kPrimaryLightColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            'Done',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: kPrimaryLightColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
