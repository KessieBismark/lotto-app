import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';

import '../widgets/call_thecaslotto.dart';
import '../widgets/live_chat.dart';



class PageContact extends StatefulWidget {
  const PageContact({super.key});

  @override
  State<PageContact> createState() => _PageContactState();
}

class _PageContactState extends State<PageContact> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Get In Touch!',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Anton',
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),

              // margin: EdgeInsets.symmetric(horizontal: 70),
              const Text(
                'Always within your reach',
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Lato',
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [],
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                    child: Image.asset('assets/images/onboarding2.png'),
                  ),
                  Container(
                    width: size.width * 0.9,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          // border: UnderlineInputBorder(),
                          filled: true,
                          icon: Icon(
                            Icons.mail,
                          ),
                          hintText: 'Enter Subject Here',
                          labelText: 'Subject'),
                      onSaved: (String? value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: size.width * 0.9,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: const TextField(
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          filled: true,
                          icon: Icon(Icons.message_rounded),
                          hintText: 'Enter Message Here',
                          labelText: 'Message'),
                      // onSaved: (String? value) {},
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.23,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(11, 46, 89, 50)),
                      child: const Center(
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          'Mobile: (+233)0541712631'.toLabel(
                            color: Colors.black,
                            bold: true,
                            font: 'Roboto',
                            fontsize: 15,
                          ),
                          const SizedBox(height: 10),
                          'Email: mail@thecashlotto.com'.toLabel(
                            color: Colors.black,
                            bold: true,
                            font: 'Roboto',
                            fontsize: 15,
                          ),
                          const SizedBox(height: 10),
                          'Address: 24 Kofi Annan St, Accra, Ghana'.toLabel(
                            color: Colors.black,
                            bold: true,
                            font: 'Roboto',
                            fontsize: 15,
                          ),
                        
                          const SizedBox(height: 10),
                          'Website: www.thecashlotto.com'.toLabel(
                            color: Colors.black,
                            bold: true,
                            font: 'Roboto',
                            fontsize: 15,
                          ),
                         
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              const LiveChat(),
              const SizedBox(height: 20),
              CallCashLotto(),
            ],
          ),
        ),
      ),
    );
  }
}
