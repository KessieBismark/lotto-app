import 'package:flutter/material.dart';

class PageTermsAndConditions extends StatelessWidget {
  const PageTermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 234, 241),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
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
                            height: 85,
                          ),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Anton',
                              fontSize: 28,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    letterSpacing: 1.0,
                                    fontFamily: 'Lato'),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                  text:
                                      'Carefully read the terms and conditions below and privacy policy before transacting with cashlotto. This is to ensure that you understand your legal obligations and rights with regard to cashlotto.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      letterSpacing: 1.0,
                                      fontFamily: 'Lato'),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '1.0 Rules',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    letterSpacing: 1.0,
                                    fontFamily: 'Lato'),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '1.1  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'If you purchase from www.thecashlotto.com, you are consenting to abide by all the provisions detailed in this agreement between cashlotto and you (the user).',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '1.2  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'www.thecashlotto.com may add, change or remove certain sections of this agreement at any time. However, if it does so, the changes made will be displayed on this site and will come into force immediately.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.0 Description of service  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.1  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto is an intermediary Lottery Service, which buys lottery tickets on behalf of its users. When you play on our site, we will buy lottery tickets as instructed by you for the games you specify.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.2  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto is neither a direct nor an indirect affiliate of any lottery commission program or operator in Ghana. We do not sell lottery tickets; thecashlotto does not receive commissions from lottery organizations in exchange for its service or participate in the earnings of winnings.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.3  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'When someone places a bet on any of the games on cashlotto, cashlotto acts as an agent placing the bet on behalf of the user using www.thecashlotto.com, delivering stakes waged by users and handing over to users the prizes/winnings received in accordance with these terms. In other words, thecashlotto acts as an intermediary lottery service between the user and the licensed lottery operator(s) under the NLA in Ghana.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.4  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'After the draw, you will be sent an email to notify you of the lottery outcome and your purchase status. Cashlotto will also inform you in the event you have won any winnings.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.5  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto has a password-protected section on its website that enables you to view your ticket purchase status, your tickets as well as other information pertaining to your account.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.6 WINNINGS: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto will do the best of its ability to detect when you win and help you in collecting your winnings from the lotteries you play.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.7 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'The ultimate responsibility rests with you to inform cashlotto when you have won.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '2.8 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'In certain circumstances such as when a lottery requires additional identification or when you win a jackpot, the lottery organization may require that you physically appear so as to collect your prize.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text:
                                        '3.0 Procedures for handling your winnings:',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.1 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'On your behalf, cashlotto offers to collect and transfer your prize from the lottery operator to your account.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.2 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Depending on the size of your winnings, we may send you an official lottery claim form that you fill, sign and send it back to us. We will then use this form plus your ticket to collect your winnings. The organization in charge of the lottery will send us a check bearing your name which only you can cash it or be deposited into a bank account in Ghana opened under your name.  Upon receiving the check, we shall notify you and make the necessary arrangements to enable you to receive the funds.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.3 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Where the lottery requires you to appear in person, you will do so and pick up your winning ticket at our offices.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.4 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Any third-party costs incurred as a result of the winnings collection process including the transfer of monies to you and the handling of the winning ticket will be borne by you.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.5 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'The responsibility for reporting your income including the payment of taxes to the relevant Federal and local authorities lies on you. Consenting to this agreement also means you acknowledge the lottery organization may on your behalf retain part of your winnings and directly forward it to the relevant tax authority.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.6 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Any winnings handled on your behalf by cashlotto will be credited directly to your cashlotto account. You would have 15 days to advise where you’d like your money.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '3.7 ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'If for some reason the lottery operator does not deliver the winning prize to us, we will not shoulder any obligation to compensate you a corresponding amount. However, we will avail your winning ticket to you so that you can collect your prize from the lottery operator in person.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.0 Purchase Terms',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.1 LEGALITY: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'The validity of these terms and conditions is subject to the legal provision of Ghana. You are directly and solely responsible for ensuring the legal permissibility of this service.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.2 ELIGIBILITY:  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto requires that all users be 18 years of age and above. You are allowed to access and use the Services only if you are legally permitted to do so via the laws of Ghana.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.3 OWNERSHIP: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'As the cashlotto user, you are the lottery ticket sole owner and any winnings which arise from the tickets we buy on your behalf.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.4 TRANSFER: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'You acknowledge that your lotto tickets can neither be transferred nor assigned to another party.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.5 TAXES: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'As a cashlotto user, you are responsible for the payment of all relevant taxes associated with the income you receive from your lottery winnings.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.6 CURRENCY: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'To the extent that we credit or transfer you any amounts under these Terms, we will do so in the Ghana Cedi currency. When you make payments to thecashlotto, you can do so with only the Ghana Cedi currency.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.7 CHARGES AND CANCELLATIONS: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'The purchase of a lotto ticket from cashlotto is a direct authorization by you to impose charges to your credit card or other forms of payment both for the ticket fees and any other goods or services pertaining to the site. After purchase has been made on site, thecashlotto will not be able to refund the payment. However, if you believe you’ve been wrongfully charged, you may request a refund.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.8 START OF PURCHASE:  ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'As soon as your payment is verified and cashlotto is able to buy a lottery ticket on your behalf, your purchase will commence immediately. Our system endeavors to prevent you from participating in the lottery draw in case of miss matching the due date. Therefore, if you suddenly bought the ticket after the draw begins, you will be automatically forwarded to the next draw.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.9 TERM OF AGREEMENT: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'This agreement will take effect on the first date following the purchase of a lottery ticket on your behalf.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.10 WINNINGS: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'All winnings will be processed as per the terms detailed in the ‘Description of Service’ section above. Cashlotto will expend every effort to detect if you are a winner and collect all winnings on your behalf. We will notify you with immediate effect when we collect the said winnings. Upon the collection, cashlotto will ask you for guidelines on what to do with the winnings. In the event you do not contact cashlotto within 15 days after the winning draw date with elaborate instructions on how to process the winnings, all winnings will be transferred to your user account only if winnings are noticed by thecashlotto. Cashlotto does not bear any responsibility for your winnings yet to be collected from the lottery organization. We are an intermediary Service and we will only attempt to collect your winnings on your behalf when instructed to do so by you. However, cashlotto has the ultimate responsibility to avail to you upon request your winning ticket.We will also attempt to notify you of any prizes you win. As the user, you have the responsibility to inform cashlotto of any winnings within the time limits set by the respective lottery operators for prize claim.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.11 WITHDRAWING WINNINGS: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Small winnings will be credited to your account immediately. The minimum withdrawal amount is GHC10. Only winnings can be withdrawn. No charges are deducted from your winnings. By submitting a withdrawal request, you approve the amount to be sent to your payment number or account.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.12 ERRONEOUS INFORMATION: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto will carefully record the winning number for all official lottery drawings. In the event wrong information is sent over to you the user, you reserve no right to any claim as shown by such erroneous information. Instead, you waive any claim against cashlotto for receipt of erroneous information.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.13 FORCE MAJEURE: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto will not be liable for delay or failure in undertaking an obligation under this agreement such as collecting winnings and purchasing lottery tickets if it is prevented by causes beyond its control, including extreme weather, natural catastrophes, actions of lottery organizations or commissions, local and federal governments, slowdowns or transportation stoppages, computer viruses, war, network slowdown, or any reason deemed as beyond the control of thecashlotto and its employees or agents.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.14 JURISDICTION: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'This agreement shall be governed by the laws and regulations of Ghana.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.15 SCOPE OF THE AGREEMENT: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'These terms and conditions including any future amendments or updates constitute the whole and entire agreement between www.thecashlotto.com and any user registered to the site or taking part in the activities proposed by www.thecashlotto. Any promise, presentation, consent or undertaking whether in writing or verbally which contravenes these terms and conditions will be null and void.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.16 REFUND POLICY: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'If cashlotto is unable to fulfill an offer to purchase a ticket for a user for any reason whatsoever before the draw commences, the offer to purchase is void and a full refund will be made to the user\'s cashlotto account within 24 Hours.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '4.17 PREDICTION SERVICE: ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'Cashlotto doesn’t offer prediction services for Ghana Lotto or any other lottery games.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            letterSpacing: 1.0,
                                            fontFamily: 'Lato'),
                                      )
                                    ]),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text:
                                        '5.0 Disclaimer and Limitation of Liability ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text:
                                        'The materials presented on this site are provided as they are and have no warranty either implied or expressed such as implied warranties of merchantability, non-infringement, and fitness for a certain purpose. Cashlotto does not guarantee the completeness, the usefulness or accuracy of any information on this site. Cashlotto also does not warrant that the information contained in materials available on site or their functions are error-free or uninterruptible. You site user and not cashlotto, is responsible for the entire cost of all necessary repair, servicing, and correction.Under no circumstances, will thecashlotto assume liability for any consequential or special damages resulting from the inability to use or the use of information presented on this site irrespective of whether thecashlotto has been notified of the possibility of such damages or not. Cashlotto total liability including losses, damages, and causes of action will in no event exceed the amount you paid to cashlotto in the course of your last transaction for products or services purchased on this site. Cashlotto shall not be held liable under any circumstances including negligence for the settlement of a lottery’s jackpot.Cashlotto is neither a lottery operator nor holds lottery draws. Each of your lottery participation is purely voluntary and done at your own risk. In case of any dispute with a lottery operator or other third party with regards to a lottery draw, you agree that cashlotto will not be held accountable for any damages or claims arising from such a dispute. Cashlotto reserves the right but not an obligation to monitor such disputes.Except otherwise stated, cashlotto does not make any warranties, representations or conditions either implied or express as to the safety of the information you provide or the activities you participate in during your use of the site. ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '6.0 Responsible Gambling Policy ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text:
                                        'Cashlotto encourages responsible attitudes and approaches towards gambling. In this regard, we prohibit any person less than 18 years of age from participating or registering an account with us. We also recommend that all users limit their lottery draws participation and not entirely depend on the lottery as a source of income. In the event you strongly feel your usage of our services amounts to irresponsibility, we encourage that you review your participation before proceeding.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text: '7.0 Assignment',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              RichText(
                                text: const TextSpan(
                                    text:
                                        'The terms and conditions including any licenses and rights granted here should not be assigned or transferred by you the user but cashlotto reserves the right to assign without notifying you.No applicable law may allow for the exclusion of the above limitations of liability or implied warranties.',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                        letterSpacing: 1.0,
                                        fontFamily: 'Lato'),
                                    children: []),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ))
        ])));
  }
}
