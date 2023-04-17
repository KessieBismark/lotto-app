import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cashlotto_app/homepage/component/controller.dart';
import 'package:cashlotto_app/services/utils/helpers.dart';
import 'package:cashlotto_app/services/widgets/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../constants.dart';
import '../post/post.dart';
import '../results/result.dart';
import '../services/constants/constant.dart';
import '../widgets/banker_board.dart';
import '../winners/winners.dart';
import 'widgets/card.dart';
import '../quotes/quotes.dart';
import 'widgets/quote.dart';
import 'widgets/timer_countdown.dart';
import '../winners/widgets/winners_list.dart';
import 'widgets/welcome_account.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    // Welcome Row
                    WelcomeAccount(
                      user: 'Welcome, ${controller.user}!',
                      amount: controller.balance,
                      date: controller.date,
                    ).padding9,
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    // Logo Container
                    Container(
                      child: Image.asset(
                        'assets/images/splash1.png',
                        height: size.height * 0.15,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: size.height * 0.07,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 192, 127, 15),
                                ),
                                child: Center(
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Lato',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      repeatForever: false,
                                      totalRepeatCount: 3,
                                      animatedTexts: [
                                        RotateAnimatedText(
                                          'Get up to 20% on all your stakes',
                                          rotateOut: false,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: size.height * 0.07,
                                width: size.width * 0.9,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 192, 127, 15),
                                ),
                                child: Center(
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      repeatForever: false,
                                      totalRepeatCount: 3,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          'Please Note that all NLA games close at 6:30pm',
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Banker Board
                    GlassmorphicContainer(
                        width: myWidth(context, 1.1),
                        height: 150,
                        border: 2,
                        blur: 20,
                        borderRadius: 20,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFffffff).withOpacity(0.1),
                              const Color(0xFFFFFFFF).withOpacity(0.1)
                            ],
                            stops: const [
                              0.1,
                              1
                            ]),
                        borderGradient: LinearGradient(
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.1),
                            const Color(0xFFFFFFFF).withOpacity(0.1)
                          ],
                        ),
                        child: Column(
                          children: [
                            "Banker".toLabel(
                                bold: true, font: 'Anton', fontsize: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                BankerBoard(bankerBoard: '45'),
                                BankerBoard(bankerBoard: '23'),
                                BankerBoard(bankerBoard: '65'),
                                BankerBoard(bankerBoard: '11'),
                                BankerBoard(bankerBoard: '19'),
                              ],
                            ).padding9.vPadding9,
                          ],
                        )),
                    // Next Game
                    const SizedBox(
                      height: 30,
                    ),
                    // const NextGame(),
                    // Counterdown timer
                    GlassmorphicContainer(
                      width: myWidth(context, 1.1),
                      height: 230,
                      border: 2,
                      blur: 20,
                      borderRadius: 20,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.1),
                            const Color(0xFFFFFFFF).withOpacity(0.1)
                          ],
                          stops: const [
                            0.1,
                            1
                          ]),
                      borderGradient: LinearGradient(
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.1),
                          const Color(0xFFFFFFFF).withOpacity(0.1)
                        ],
                      ),
                      child: CountdownTimer(
                        endTime:
                            controller.countdownDate.millisecondsSinceEpoch,
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                        widgetBuilder: (BuildContext context, time) {
                          return TimerCountDown(duration: time!);
                        },
                      ),
                    ),
                    //  TimerCountDown(duration: controller.timer),
                    // List of Recent Winners

                    const SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.08,
                            width: size.width,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Latest Results - ',
                                    style: const TextStyle(
                                        fontSize: 25, fontFamily: 'Anton'),
                                    colors: const [
                                      Colors.black,
                                      Colors.red,
                                      Colors.green
                                    ],
                                  ),
                                  GradientText(
                                    controller.date.dateFormatString(),
                                    style: const TextStyle(
                                        fontSize: 25, fontFamily: 'Anton'),
                                    colors: const [
                                      Colors.black,
                                      Colors.red,
                                      Colors.green
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 350,
                            child: Expanded(
                              child: ListView.builder(
                                  itemCount: controller.results.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return ListTile(
                                      title: controller.results[index].name
                                          .toAutoLabel(bold: true),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          "Winning No: ${controller.results[index].winning}"
                                              .toLabel(
                                            color: Colors.green,
                                          ),
                                          "Machine No: ${controller.results[index].machine}"
                                              .toAutoLabel()
                                        ],
                                      ),
                                    ).card;
                                  }),
                            ),
                          ).card,
                          // for (int i = 0; i < controller.results.length; i++)
                          //   CurrentResult(
                          //     name: controller.results[i].name,
                          //     date: controller.results[i].date,
                          //   ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Result();
                              }));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.shade700,
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                  colors: [Colors.greenAccent, Colors.purple],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Text(
                                'More Results',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.07,
                            width: size.width,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Recent Game ',
                                    style: const TextStyle(
                                        fontSize: 27, fontFamily: 'Anton'),
                                    colors: const [
                                      Colors.blueAccent,
                                      Colors.red,
                                      Colors.green
                                    ],
                                  ),
                                  GradientText(
                                    'Winners',
                                    style: const TextStyle(
                                        fontSize: 27, fontFamily: 'Anton'),
                                    colors: [
                                      Colors.black87,
                                      Colors.amber.shade900,
                                      Colors.green
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          for (int i = 0; i < controller.winners.length; i++)
                            WinnersList(
                                name: controller.winners[i].name,
                                game: controller.winners[i].game,
                                amount: controller.winners[i].amount),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PageWinners();
                              }));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.shade700,
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                  colors: [Colors.greenAccent, Colors.purple],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: const Text(
                                'All Wins',
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.07,
                            width: size.width * 0.9,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GradientText(
                                    'Recent Blog ',
                                    style: const TextStyle(
                                        fontSize: 27, fontFamily: 'Anton'),
                                    colors: const [
                                      Colors.blueAccent,
                                      Colors.red,
                                      Colors.green
                                    ],
                                  ),
                                  GradientText(
                                    'Post',
                                    style: const TextStyle(
                                        fontSize: 27, fontFamily: 'Anton'),
                                    colors: [
                                      Colors.amber.shade900,
                                      Colors.red,
                                      Colors.green
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          for (int i = 0; i < controller.card.length; i++)
                            BlogCard(
                              card: controller.card[i],
                            ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PageBlogPost();
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.shade700,
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                            colors: [Colors.greenAccent, Colors.purple],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: const Text(
                          'All Posts',
                          style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      child: Container(
                        height: myHeight(context, 1.4),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 239, 248),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: SizedBox(
                                height: size.height * 0.07,
                                width: size.width,
                                child: GradientText(
                                  'Famous Lotto Quotes',
                                  style: const TextStyle(
                                      fontSize: 27, fontFamily: 'Anton'),
                                  textAlign: TextAlign.center,
                                  colors: const [
                                    Colors.blueAccent,
                                    Colors.red,
                                    Colors.cyan
                                  ],
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                              height: 10,
                            ),
                            const SizedBox(height: 30),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: controller.quotes.length,
                                  itemBuilder: (context, index) {
                                    return Card4DetailCard1(
                                      imageLink:
                                          controller.quotes[index].imageLink,
                                      quote: controller.quotes[index].quote,
                                      quoter: controller.quotes[index].quoter,
                                    ).padding9;
                                  }),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return QuotesList(
                                      quotes: controller.quotes,
                                    );
                                  }),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                    color: Colors.amber[900],
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Text(
                                  'More Quotes',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
