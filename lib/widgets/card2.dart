import 'package:flutter/material.dart';

import 'card2_detail.dart';

class BlogCard2 extends StatelessWidget {
  const BlogCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.38,
        width: size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  onTap: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Card2Detail();
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          // Image.asset('assets/images/splash1.png'),
                          Ink.image(
                            height: 200,
                            image: const AssetImage(
                                'assets/images/onboarding1.png'),
                            fit: BoxFit.fitWidth,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Learning How To Play',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Lato',
                              fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
