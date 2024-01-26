

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piddu/card.dart';
class CakeCuttingScreen extends StatefulWidget {
  @override
  _CakeCuttingScreenState createState() => _CakeCuttingScreenState();
}

class _CakeCuttingScreenState extends State<CakeCuttingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isCutting = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void _cutCake() {
    if (!isCutting) {
      _controller.forward().then((value) {
        _controller.reverse();
      });
      setState(() {
        isCutting = true;
      });
    }
  }
void next() {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Example(),));
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,
      title:  Text('Make a wish',style: GoogleFonts.ubuntu(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150,),
            Container(
                        alignment: Alignment.center,
                        width: 500.0,
                        height: 400.0,
                        child: Image.asset(
                          'assets/mov/giphy.gif',
                          fit: BoxFit.fill, // Set the BoxFit to fill the container
                        ),
                      ),
                      const SizedBox(height: 55,),
                      ElevatedButton(onPressed: next, child: Text('Next >',style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
              );
            
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}