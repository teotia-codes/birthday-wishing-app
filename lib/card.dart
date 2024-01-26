

import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piddu/final.dart';

class Example extends StatefulWidget {

  Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {

  List<Container> cards = [
    Container(
      margin:  EdgeInsets.only(top: 40,bottom: 70,left: 5,right: 5),
      decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/cake.png'),
      fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(25),
        
      color: Colors.pink.shade100),
      
      alignment: Alignment.center,
      
    ),
    Container(
     margin:  EdgeInsets.only(top: 40,bottom: 70,left: 5,right: 5),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/text1.png'),),
        borderRadius: BorderRadius.circular(25),
      color: Color.fromARGB(255, 251, 211, 225)),
      alignment: Alignment.center,
      child: Column(
        children:[ 
          Text('Add your personalised notes'),
           Text(''),
        ],
      ),
    ),
    Container(margin:  EdgeInsets.only(top: 40,bottom: 70,left: 5,right: 5),
      decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/text1.png'),),
        borderRadius: BorderRadius.circular(25),
      color: Color.fromARGB(255, 251, 211, 225)),
      alignment: Alignment.center,
      child: const Column(
        children:[ Text('Add your personalised notes'),
           Text(''),
        ],
      ),
    )
  ];

void newS() {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>FinalScreen(),),);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting card for you',style: GoogleFonts.satisfy(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                              )),
        foregroundColor: Colors.black,
        backgroundColor: Colors.pink.shade50,
      ),
      backgroundColor: Colors.pink.shade50,
      body: Flexible(
        child: CardSwiper(
          cardsCount: 3,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
          isLoop: true,
          allowedSwipeDirection: const AllowedSwipeDirection.only(right: true,
          left: true),
          onEnd: newS,
        ),
      ),
    );
  }
}