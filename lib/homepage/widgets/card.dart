import 'package:flutter/material.dart';

import '../component/card_model.dart';
import 'card_detail.dart';

class BlogCard extends StatelessWidget {
  final CardModel card;

  const BlogCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.35,
        width: size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      return CardDetail(
                        cardDetailModel: card.cardDetail,
                      );
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                           Image.asset('assets/images/splash1.png',fit: BoxFit.contain,height: 180,),
                          // Ink.image(
                          //   height: 180,
                          //   image: AssetImage(card.imageLink),
                          //   fit: BoxFit.fitWidth,
                          // )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          card.description,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
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
