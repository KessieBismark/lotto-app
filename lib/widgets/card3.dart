import 'package:flutter/material.dart';

import 'card3_detail.dart';

class BlogCard3 extends StatelessWidget {
  const BlogCard3({Key? key}) : super(key: key);

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
                      return const Card3Detail();
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
                                'assets/images/lotto_balls2.jpg'),
                            fit: BoxFit.fitWidth,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Understanding How Lotto Draws Are Done',
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
