import 'package:flutter/material.dart';


class PageBlogPost extends StatelessWidget {
  const PageBlogPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 234, 241),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.34,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 250,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/onboarding5.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 90, left: 20),
                          color: const Color(0xFF3b5999).withOpacity(0.65),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Recent Lottery Posts',
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                    fontFamily: 'Anton'),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Be motivated & learn more about lotto',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 1.0,
                                    fontFamily: 'Lato'),
                              ),
                              Text(
                                'Win More on with CashLotto',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    letterSpacing: 1.0,
                                    fontFamily: 'Lato'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             // const BlogCard1(),
            ],
          ),
        ),
      ),
    );
  }
}
