import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../component/card_model.dart';

class CardDetail extends StatelessWidget {
  final CardDetailModel cardDetailModel;
  const CardDetail({Key? key, required this.cardDetailModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: cardDetailModel.title.toLabel(),
      ),
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
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(cardDetailModel.imageLink),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(top: 90, left: 20),
                          color: const Color(0xFF3b5999).withOpacity(0.65),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              cardDetailModel.title.toLabel(
                                  bold: true,
                                  fontsize: 23,
                                  letterSpace: 3.0,
                                  color: Colors.white,
                                  font: 'Anton'),
                              const SizedBox(
                                height: 6,
                              ),
                              cardDetailModel.description.toString().toLabel(
                                  bold: false,
                                  fontsize: 16,
                                  letterSpace: 1.0,
                                  color: Colors.white,
                                  font: 'Anton')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardDetailModel.paragraph.toLabel(
                        fontsize: 13, color: Colors.black, font: 'Lato'),
                    cardDetailModel.paragraph2!.toLabel(
                        fontsize: 13, color: Colors.black, font: 'Lato'),
                    for (int i = 0; i < cardDetailModel.list!.length; i++)
                      cardDetailModel.list![i]
                          .toLabel(
                              fontsize: 13, color: Colors.black, font: 'Lato')
                          .vPadding9,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
